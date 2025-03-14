import { useState, useEffect, useMemo, useCallback } from "react"
import { marked } from "marked"

import MarkdownPreview from "./MarkdownPreview";
import markdownContent from "./markdownContent"

export default function App() {
    const [text, setText] = useState(markdownContent)
    const [time, setTime] = useState(Date.now())
    const [theme, setTheme] = useState("green")

    useEffect(() => {
        const interval = setInterval(() => {
            setTime(Date.now())
        }, 1000);
        return () => clearInterval(interval)
    }, [])

    const options = useMemo(() => ({ text, theme }), [text, theme]);
    // render and render2 are functionally equivalent
    const render = useCallback((text) => marked.parse(text), []);
    const render2 = useMemo(() => (text) => marked.parse(text), []);

    return (
        <div className="app">
            <h1>Perf with React</h1>
            <h2>Current Time: {time}</h2>
            <label htmlFor="theme">
                Choose a setTheme
                <select onChange={e => setTheme(e.target.value)}>
                    <option value="green">Green</option>
                    <option value="yellow">Yellow</option>
                    <option value="red">Red</option>
                    <option value="violet">Violet</option>
                </select>
            </label>
            <div className="markdown">
                <textarea className="markdown-editor" value={text} onChange={(e) => setText(e.target.value)}></textarea>
                <MarkdownPreview options={options} render={render} />
            </div>
        </div>
    )
}
