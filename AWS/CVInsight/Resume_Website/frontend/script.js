document.getElementById("loginTab").addEventListener("click", () => {
    document.getElementById("loginForm").classList.remove("hidden");
    document.getElementById("signupForm").classList.add("hidden");
    document.getElementById("loginTab").classList.add("active");
    document.getElementById("signupTab").classList.remove("active");
});

document.getElementById("signupTab").addEventListener("click", () => {
    document.getElementById("signupForm").classList.remove("hidden");
    document.getElementById("loginForm").classList.add("hidden");
    document.getElementById("signupTab").classList.add("active");
    document.getElementById("loginTab").classList.remove("active");
});

document.getElementById("switchToSignup").addEventListener("click", (e) => {
    e.preventDefault();
    document.getElementById("signupTab").click();
});

// Login Form Submission
document.getElementById("loginForm").addEventListener("submit", async (e) => {
    e.preventDefault();
    
    const email = e.target.elements[0].value;
    const password = e.target.elements[1].value;

    try {
        const response = await fetch("your-login-api-endpoint", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({ email, password }),
        });

        const data = await response.json();
        console.log("Login successful:", data);

        document.getElementById("error").innerText = "Login successful!";
        document.getElementById("error").style.color = "green";

        // Redirect to homepage after successful login
        window.location.href = "homepage.html";

    } catch (error) {
        console.error("Login failed:", error);
        document.getElementById("error").innerText = "Login failed: " + error.message;
    }
});

// Signup Form Submission
document.getElementById("signupForm").addEventListener("submit", async (e) => {
    e.preventDefault();

    const email = e.target.elements[0].value;
    const password = e.target.elements[1].value;
    const confirmPassword = e.target.elements[2].value;

    if (password !== confirmPassword) {
        document.getElementById("error").innerText = "Passwords do not match!";
        return;
    }

    try {
        const response = await fetch("your-signup-api-endpoint", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({ email, password }),
        });

        const data = await response.json();
        console.log("Signup successful:", data);

        document.getElementById("error").innerText = "Signup successful!";
        document.getElementById("error").style.color = "green";

        // Redirect to homepage after successful signup
        window.location.href = "homepage.html";

    } catch (error) {
        console.error("Signup failed:", error);
        document.getElementById("error").innerText = "Signup failed: " + error.message;
    }
});
