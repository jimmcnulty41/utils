

interface Spec {
    // FMT: html, column values interpolated using %colName%
    label: string;
}

type styleString = string;

const isStyleString = (str: string): str is styleString => {
    return (str.indexOf('=') === -1);
}

interface Connection {
    from: string;
    to: string;
    style?: string;
    label?: string;

}