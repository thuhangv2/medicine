<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class ResetPassword extends Notification
{
    use Queueable;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    protected $token;
    public $subject;
    public $site_title;
    public $site_admin;
    public function __construct($token)
    {
        $this->token      = $token;
        $this->subject    = trans('email.reset_password.reset_button');
        $this->site_title = config('app.name');
        $this->site_admin = config('mail.from.name');
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        $data = [
            'site_title'   => $this->site_title,
            'site_url'     => route('home'),
            'reset_link'   => route('password.reset', ['token' => $this->token]),
            'title'        => trans('email.reset_password.title'),
            'title_center' => '',
            'site_admin'   => $this->site_admin,
        ];
        return (new MailMessage)
            ->subject($this->subject)
            ->view('email.resetPassword', ['data' => $data]);
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
