<?php
header("Content-Type: application/json");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $userMessage = $_POST['message'] ?? '';

    // Example: Call OpenAI / Any API
    $apiKey = "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"; // <-- replace with your API key
    

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
