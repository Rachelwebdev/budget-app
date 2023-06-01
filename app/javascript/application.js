// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import '@hotwired/turbo-rails';
import 'controllers';
import 'jquery';
import 'materialize';

document.addEventListener('DOMContentLoaded', function () {
  const categoryPhotoInput = document.getElementById('category_photo_input');
  const categoryPhotoPreview = document.getElementById(
    'category_photo_preview'
  );

  categoryPhotoInput.addEventListener('change', function () {
    const file = categoryPhotoInput.files[0];

    if (file) {
      const reader = new FileReader();

      reader.addEventListener('load', function () {
        const image = document.createElement('img');
        image.src = reader.result;
        categoryPhotoPreview.innerHTML = '';
        categoryPhotoPreview.appendChild(image);
      });

      reader.readAsDataURL(file);
    } else {
      categoryPhotoPreview.innerHTML = '';
    }
  });
});
