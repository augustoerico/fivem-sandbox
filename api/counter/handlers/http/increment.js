module.exports.handle = async (event) => {
    return {
        statusCode: 200,
        body: JSON.stringify({
            message: 'Got',
            input: event
        })
    };
};