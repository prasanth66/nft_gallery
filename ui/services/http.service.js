import axios from "axios";

export const postWithAuth = (url, entity) => {
    return new Promise((resolve, reject) => {
        axios
            .post(url, entity)
            .then((response) => {
                if (response && response.data) {
                    resolve(response.data);
                }
            })
            .catch((ex) => {
                reject(ex);
            });
    });
};

export const getWithAuth = (url) => {
    return new Promise((resolve, reject) => {
        console.log("url", url);
        axios
            .get(url)
            .then((response) => {
                if (response && response.data) {
                    resolve(response.data);
                }
            })
            .catch((ex) => {
                reject(ex);
            });
    });
};
