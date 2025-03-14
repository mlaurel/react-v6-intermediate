import { useEffect, useOptimistic, useState, useTransition } from "react";

export default function App() {
    const [isPending, startTransition] = useTransition();
    const [thoughts, setThoughts] = useState([]);
    const [thought, setThought] = useState("");
    const [optimisticThoughts, addOptimisticThought] = useOptimistic(
        thoughts,
        (oldThoughts, newThought) => [newThought, ...oldThoughts]
    );

    async function postDeepThought() {
        startTransition(async () => {
            addOptimisticThought(`${thought} (Loading...)`);
            setThought("");
            const response = await fetch("/thoughts", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify({ thought }),
            });
            if (!response.ok) {
                alert("This thought was not deep enough. Please try again.");
                return;
            }
            const { thoughts: newThoughts } = await response.json();
            setThoughts(newThoughts);
        });
    }


    // Fetch the initial thoughts
    // Parse the JSON response
    // Set the thoughts state (with promises)
    useEffect(() => {
        fetch("/thoughts")
            .then((res) => res.json())
            .then((data) => {
                setThoughts(data);
            });
    }, []);

    return (
        <div className="app">
            <h1>Deep Thoughts</h1>
            <form
                onSubmit={(e) => {
                    e.preventDefault();
                    postDeepThought();
                }}
            >
                <label htmlFor="thought">What's on your mind?</label>
                <textarea
                    id="thought"
                    name="thought"
                    rows="5"
                    cols="33"
                    value={thought}
                    onChange={(e) => setThought(e.target.value)}
                />
                <button type="submit">Submit</button>
            </form>
            <ul>
                {optimisticThoughts.map((thought, index) => (
                    // {thoughts.map((thought, index) => (
                    // Thoughts don't need to be uniqe, so this can be done with index or thought
                    // <li key={index}>{thought}</li>
                    <li key={index}>{thought}</li>
                ))}
            </ul>
        </div>
    );
}
