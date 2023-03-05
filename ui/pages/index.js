import { getUsers } from "services/user.service";
import { useEffect, useState } from "react";
export default function Home() {
    const [user, setUser] = useState([]);
    useEffect(() => {
        const fetcher = async () => {
            const response = await getUsers();
            setUser(response.entity);
        };
        fetcher();
    }, []);
    return (
        <div>
            <main>hello</main>
            {user.length && user.map((item) => <div key={item.id}>{item.name}</div>)}
        </div>
    );
}
