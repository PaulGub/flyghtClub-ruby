document.addEventListener('turbo:load', function () {
    const snackbar = document.getElementById('snackbar');
    if (snackbar) {
        setTimeout(() => {
            snackbar.classList.replace('opacity-100', 'opacity-0');
            setTimeout(() => {
                snackbar.remove();
            }, 150);
        }, 4000)
    }
})