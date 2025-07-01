<script src="https://cdn.jsdelivr.net/npm/baguettebox.js@1.11.1/dist/baguetteBox.min.js"></script>
<script>
  document.addEventListener('DOMContentLoaded', function() {
    // Wrap all post images that are not already linked
    document.querySelectorAll('.post-container img.img-markdown').forEach(img => {
      if (!img.closest('a')) {
        const wrapper = document.createElement('a');
        wrapper.href = img.src;
        wrapper.setAttribute('data-caption', img.alt || '');
        img.parentNode.insertBefore(wrapper, img);
        wrapper.appendChild(img);
      }
    });

    // Add data-caption to thumbnails if missing
    document.querySelectorAll('[component="topic/thumb/list"] a').forEach(a => {
      const img = a.querySelector('img');
      if (img && !a.hasAttribute('data-caption')) {
        a.setAttribute('data-caption', img.alt || '');
      }
    });

    // Initialize lightbox on both post and thumb containers
    baguetteBox.run('.post-container, [component="topic/thumb/list"]', {
      captions: true
    });

    // Disable default Harmony thumb modal
    try {
      if (window.require && require.cache && require.cache['topic/thumbs']) {
        require.cache['topic/thumbs'].handleThumbs = function() {};
      }
    } catch (e) {
      console.warn('Could not override Harmony thumbnail modal');
    }
  });
</script>