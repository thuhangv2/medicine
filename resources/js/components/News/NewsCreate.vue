<template>
    <div class="crud-form">
        <div class="form-group">
            <router-link to="/" class="btn btn-default">Back</router-link>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">Tạo mới tin tức</div>
            <div class="panel-body">
                <form v-on:submit="saveForm()">
                    <div class="row">
                        <div class="col-xs-12 form-group">
                            <label class="control-label">Tiêu đề</label>
                            <input type="text" v-model="news.tieu_de" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 form-group">
                            <label class="control-label">Mở bài</label>
                            <input type="text" v-model="news.mo_bai" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 form-group">
                            <label class="control-label">Thân bài</label>
                            <input type="text" v-model="news.than_bai" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 form-group">
                            <label class="control-label">Kết luận</label>
                            <input type="text" v-model="news.ket_luan" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 form-group">
                            <label class="control-label">Ảnh minh hoạ 1</label>
                            <input type="text" v-model="news.anh_minh_hoa_1" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 form-group">
                            <label class="control-label">Ảnh minh hoạ 2</label>
                            <input type="text" v-model="news.anh_minh_hoa_2" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 form-group">
                            <label class="control-label">Ảnh minh hoạ 3</label>
                            <input type="text" v-model="news.anh_minh_hoa_3" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 form-group">
                            <button class="btn btn-success">Tạo tin</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data: function () {
            return {
                news: {
                    tieu_de: '',
                    mo_bai: '',
                    than_bai: '',
                    ket_luan: '',
                    tham_khao: '',
                    anh_minh_hoa_1: '',
                    anh_minh_hoa_2: '',
                    anh_minh_hoa_3: '',
                }
            }
        },
        methods: {
            saveForm() {
                event.preventDefault();
                var adminApp = this;
                var newNews = adminApp.news;
                axios.post('/api/v1/news', newNews)
                    .then(function (resp) {
                        adminApp.$router.push({path: '/'});
                    })
                    .catch(function (resp) {
                        console.log(resp);
                        alert("Could not create your news");
                    });
            }
        }
    }
</script>