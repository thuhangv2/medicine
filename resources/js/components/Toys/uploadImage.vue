<template>
    <div class="upload-image">
        <div v-if="!image">
            <input type="file" @change="onFileChange">
        </div>
        <div v-else>
            <img :src="image" />
            <button @click="removeImage">Remove image</button>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'uploadImage',
        data () {
            return {
                image: ''
            }
        },
        methods: {
            onFileChange(e) {
                var files = e.target.files || e.dataTransfer.files;
                if (!files.length)
                    return;
                this.createImage(files[0]);
            },
            createImage(file) {
                var image = new Image();
                var reader = new FileReader();
                var vm = this;

                reader.onload = (e) => {
                    vm.image = e.target.result;
                    // emit phai de o day moi run dc, tim mai moi ra day
                    this.$emit('upload-an-image', vm.image);
                };

                reader.readAsDataURL(file);
            },
            removeImage: function (e) {
                this.image = '';
            }
        }
    };
</script>

