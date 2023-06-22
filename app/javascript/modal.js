document.addEventListener('turbo:load', function () {
    const cancelButtons = document.querySelectorAll('.Delete-booking');
    console.log(cancelButtons);

    cancelButtons.forEach((cancelButton) => {
        cancelButton.addEventListener('click', () => {
           const modal = cancelButton.parentElement.children[0];

           modal.classList.remove('hidden');
        });
    });
})