contract main {


// =======================  Init code  ======================


const _fallback = code.data[17 len 254]




// =====================  Runtime code  =====================


mapping of address users;

function users(bytes32 arg1) payable {
    return address(users[arg1])
}

function _fallback() payable {
  stop
}

function unregister(bytes32 arg1) payable {
    if address(users[arg1]):
        if arg1 != 0:
            address(users[arg1]) = 0
}

function register(bytes32 arg1) payable {
    if not address(users[arg1]):
        if arg1 != 0:
            uint256(users[arg1]) = msg.sender or Mask(96, 160, uint256(users[arg1]))
}



}
