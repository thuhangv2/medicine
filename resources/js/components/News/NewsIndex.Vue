<template>
    <div>
        <div class="form-group">
            <router-link :to="{name: 'createNews'}" class="btn btn-success">Tạo Tin tức </router-link>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">Danh sách tin tức</div>
            <div class="panel-body">
                <table class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>Tiêu đề</th>
                        <th>Mở bài</th>
                        <th>Thân bài</th>
                        <th>Kết luận</th>
                        <th width="100">&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="news, index in listOfNews" v-show="listOfNews.length > 0">
                        <td>{{ news.tieu_de }}</td>
                        <td>{{ news.mo_bai }}</td>
                        <td>{{ news.than_bai }}</td>
                        <td>{{ news.ket_luan }}</td>
                        <td>
                            <router-link :to="{name: 'editNews', params: {id: news.id}}" class="btn btn-xs btn-default">
                                Edit
                            </router-link>
                            <a href="#"
                               class="btn btn-xs btn-danger"
                               v-on:click="deleteEntry(news.id, index)">
                                Delete
                            </a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data: function () {
            return {
                listOfNews: []
            }
        },
        mounted() {
            var adminApp = this;
            axios.get('/admin/news/create')
                .then(function (response) {
                    adminApp.listOfNews = response.data;
                })
                .catch(function (response) {
                    console.log(response);
                    alert("Could not load news");
                });
        },
        methods: {
            deleteEntry(id, index) {
                if (confirm("Do you really want to delete it?")) {
                    var adminApp = this;
                    axios.delete('/admin/news/' + id)
                        .then(function (response) {
                            adminApp.listOfNews.splice(index, 1);
                        })
                        .catch(function (response) {
                            alert("Could not delete news");
                        });
                }
            }
        }
    }
</script>