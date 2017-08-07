const initialState = {
  channel: null,
  currentRoom: {},
  messages: [], // new line
};

export default function (state = initialState, action) {
  switch (action.type) {
    case 'ROOM_CONNECTED_TO_CHANNEL':
      return {
        ...state,
        channel: action.channel,
        currentRoom: action.response.room,
        messages: action.response.messages.reverse(), // new line
      };
    case 'USER_LEFT_ROOM':
      return initialState;
    case 'MESSAGE_CREATED': // new case
      return {
        ...state,
        messages: [
          ...state.messages,
          action.message,
        ],
      };
    default:
      return state;
  }
}
