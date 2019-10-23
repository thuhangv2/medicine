<template>
    <div class="crud-form">
        <div class="form-group">
            <router-link to="/" class="btn btn-default">Back</router-link>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">Tạo mới tin tức</div>
            <div class="panel-body">
                <form v-on:submit="onUpload()" enctype="multipart/form-data">
                    <!--<div class="row">-->
                        <!--<div class="col-12 form-group">-->
                            <!--<label class="control-label">Tiêu đề</label>-->
                            <!--<input type="text" v-model="news.tieu_de" class="form-control">-->
                        <!--</div>-->
                    <!--</div>-->
                    <!--<div class="row">-->
                        <!--<div class="col-12 form-group">-->
                            <!--<label class="control-label">Mở bài</label>-->
                            <!--<textarea type="text" v-model="news.mo_bai" class="form-control"></textarea>-->
                        <!--</div>-->
                    <!--</div>-->
                    <!--<div class="row">-->
                        <!--<div class="col-12 form-group">-->
                            <!--<label class="control-label">Thân bài</label>-->
                            <!--<textarea type="text" v-model="news.than_bai" class="form-control"></textarea>-->
                        <!--</div>-->
                    <!--</div>-->
                    <!--<div class="row">-->
                        <!--<div class="col-12 form-group">-->
                            <!--<label class="control-label">Kết luận</label>-->
                            <!--<textarea type="text" v-model="news.ket_luan" class="form-control"></textarea>-->
                        <!--</div>-->
                    <!--</div>-->
                    <!--<div class="row">-->
                        <!--<div class="col-12 form-group">-->
                            <!--<label class="control-label">Ảnh minh hoạ 1</label>-->
                            <!--<upload-image @upload-an-image="news.anh_minh_hoa_1 = $event"></upload-image>-->
                        <!--</div>-->
                    <!--</div>-->
                    <!--<div class="row">-->
                        <!--<div class="col-12 form-group">-->
                            <!--<label class="control-label">Ảnh minh hoạ 2</label>-->
                            <!--<upload-image @upload-an-image="news.anh_minh_hoa_2 = $event"></upload-image>-->
                        <!--</div>-->
                    <!--</div>-->
                    <!--<div class="row">-->
                        <!--<div class="col-12 form-group">-->
                            <!--<label class="control-label">Ảnh minh hoạ 3</label>-->
                            <!--<upload-image @upload-an-image="news.anh_minh_hoa_3 = $event"></upload-image>-->
                        <!--</div>-->
                    <!--</div>-->
                    <input type="file" @change="onFileChanged">
                    <button>Upload!</button>
                    <!--<div class="row">-->
                        <!--<div class="col-12 form-group">-->
                            <!--<button class="btn btn-success">Tạo tin</button>-->
                        <!--</div>-->
                    <!--</div>-->
                </form>
            </div>
        </div>
    </div>
</template>

<script type="text/javascript">
    import uploadImage from '../Toys/uploadImage.vue';

    export default {
        data: function () {
            return {
                // news: {
                //     tieu_de: '',
                //     mo_bai: '',
                //     than_bai: '',
                //     ket_luan: '',
                //     tham_khao: '',
                //     anh_minh_hoa_1: '',
                //     anh_minh_hoa_2: '',
                //     anh_minh_hoa_3: ''
                // }
                selectedFile: null

            }
        },
        components: {
            'upload-image': uploadImage
        },
        methods: {
            onFileChanged (event) {
                this.selectedFile = event.target.files[0]
                console.log(this.selectedFile);
            },
            onUpload() {
                const formData = new FormData()
                formData.append('myFile', this.selectedFile, this.selectedFile.name)
                axios.post('/admin/news/post', formData)
            },
            // saveForm() {
            //     event.preventDefault();
            //     console.log(this.news);
            //     axios.post('/admin/news/post',this.news)
            //         .then(function (resp) {
            //             console.log(resp);
            //             adminApp.$router.push({path: '/'});
            //         })
            //         .catch(function (resp) {
            //             // console.log(resp);
            //             alert("Could not create your news");
            //         });
            // }
        }
    }
</script>

