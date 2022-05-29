contract main {




// =====================  Runtime code  =====================


mapping of address users;

function users(address arg1) {
    return address(users[arg1])
}

function _fallback() payable {
    revert
}

function clearUser() {
    address(users[msg.sender]) = 0
}

function registerUser() {
    uint256(users[tx.origin]) = msg.sender or Mask(96, 160, uint256(users[tx.origin]))
    emit NewUser(tx.origin, msg.sender);
}



}
