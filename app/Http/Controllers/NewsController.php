<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;
use App\Components\GoogleClient;
use Google_Service_Drive;
use Illuminate\Http\UploadedFile;

class NewsController extends Controller
{
    protected $client;

    public function __construct(GoogleClient $client) {
        $this->client = $client->getClient();
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.news.index');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return News::all();
    }

//    /**
//     * Show the form for creating a new resource.
//     *
//     * @return \Illuminate\Http\Response
//     */
//    public function create()
//    {
//        return view('admin.news.index');
//    }
//
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if ($request->hasFile('myFile')) {
            $imageID = $this->getImageID($request->file('myFile'));
            echo "File ID = ".$imageID;
            News::create(array_merge($request->all(), [
                'image' => $imageID
            ]));
            $res = ['res' => 'ok'];
        } else $res = ['res' => 'fail'];

        return response()->json($res);
    }

    /**
     * Upload an image to google drive.
     */
    private function getImageID($image)
    {
        $driveService = new Google_Service_Drive($this->client);

        try {
            $fileMetadata = new \Google_Service_Drive_DriveFile([
                'name' => time().'.'.$image->getClientOriginalExtension(),
            ]);

            $file = $driveService->files->create($fileMetadata, [
                'data' => file_get_contents($image->getRealPath()),
                'uploadType' => 'multipart',
                'fields' => 'id',
            ]);

            return $file->id;
        } catch (\Exception $e) {
            //
        }
    }
//
//    /**
//     * Display the specified resource.
//     *
//     * @param  int  $id
//     * @return \Illuminate\Http\Response
//     */
//    public function show($id)
//    {
//        return News::findOrFail($id);
//    }
//
//    /**
//     * Show the form for editing the specified resource.
//     *
//     * @param  int  $id
//     * @return \Illuminate\Http\Response
//     */
//    public function edit($id)
//    {
//        //
//    }
//
//    /**
//     * Update the specified resource in storage.
//     *
//     * @param  \Illuminate\Http\Request  $request
//     * @param  int  $id
//     * @return \Illuminate\Http\Response
//     */
//    public function update(Request $request, $id)
//    {
//        $news = News::findOrFail($id);
//        $news->update($request->all());
//
//        return $news;
//    }
//
//    /**
//     * Remove the specified resource from storage.
//     *
//     * @param  int  $id
//     * @return \Illuminate\Http\Response
//     */
//    public function destroy($id)
//    {
//        $news = News::finfOrFail($id);
//        $news->delete();
//
//        return 'done';
//    }
}
