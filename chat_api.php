<?php
header("Content-Type: application/json");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $userMessage = $_POST['message'] ?? '';

    // Example: Call OpenAI / Any API
    $apiKey = "TESTWORD"; // <-- replace with your API key
    $apiKey = getenv("OPENAI_API_KEY");

    $ch = curl_init("https://api.openai.com/v1/chat/completions");
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        "Content-Type: application/json",
        "Authorization: Bearer " . $apiKey
    ]);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode([
        "model" => "gpt-3.5-turbo",
        "messages" => [
            ["role" => "system", "content" => "You are a helpful financial assistant named Fincha Bot."],
            ["role" => "user", "content" => $userMessage]
        ]
    ]));

    $response = curl_exec($ch);
    curl_close($ch);

    $data = json_decode($response, true);

    if (isset($data['choices'][0]['message']['content'])) {
        echo json_encode(["reply" => $data['choices'][0]['message']['content']]);
    } else {
        echo json_encode(["reply" => "Sorry, I couldn’t get a response."]);
    }
}
