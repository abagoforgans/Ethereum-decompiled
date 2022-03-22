contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 331]
}



// =====================  Runtime code  =====================


address stor0;
mapping of address users;

function users(bytes32 arg1) payable {
    return address(users[arg1])
}

function die() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
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
