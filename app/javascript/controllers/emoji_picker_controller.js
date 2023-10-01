// app/javascript/controllers/emoji_picker_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  selectEmoji(event) {
    const emojiValue = event.currentTarget.getAttribute('data-emoji-value');
    document.getElementById('emoji-input').value = emojiValue;

    // Optionally, add a selected state to the clicked emoji
    this.clearSelection();
    event.currentTarget.classList.add('selected');
  }

  clearSelection() {
    this.element.querySelectorAll('.emoji.selected').forEach(el => {
      el.classList.remove('selected');
    });
  }
}