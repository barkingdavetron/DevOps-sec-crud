import "@hotwired/turbo-rails"

document.addEventListener("turbo:load", () => {
  const darkModeBtn = document.getElementById("dark-mode");
  const themeIcon = document.getElementById("theme-icon");

  const setTheme = (theme) => {
    if (theme === "dark") {
      document.body.classList.add("dark-mode");
      if (themeIcon) themeIcon.textContent = "☀️";
    } else {
      document.body.classList.remove("dark-mode");
      if (themeIcon) themeIcon.textContent = "🌙";
    }
    localStorage.setItem("theme", theme);
  };

  // Load the saved theme
  const savedTheme = localStorage.getItem("theme") || "light";
  setTheme(savedTheme);

  // Toggle when the button is clicked
  if (darkModeBtn) {
    darkModeBtn.addEventListener("click", () => {
      const newTheme = document.body.classList.contains("dark-mode") ? "light" : "dark";
      setTheme(newTheme);
    });
  }
});
  