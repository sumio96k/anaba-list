// 画像のプレビュー表示
// const uploadImageModule =(() => {
//   const inputElement = document.getElementById('image')
//   const previewElement = document.getElementById('image-preview')

//   inputElement.addEventListener("change", event => {

//     event.preventDefault();
//     event.stopPropagation();

//     const file = event.target.files[0];

//     if(!file || !file.type.match(/image\/*/)) {
//       alert('画像ファイルがありません。')
//       return false;
//     }

//     const reader = new FileReader();

//     reader.addEventListener('load', event => {
//       previewElement.setAttribute('src', event.target.result);
//     })

//     reader.readAsDataURL(file);
//   });
// })();

