import API from "./api";

export const getRecommendations = async (data) => {
    const response = await API.post("/ai/recommendations", data);
    return response.data;
};