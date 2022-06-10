contract main {




// =====================  Runtime code  =====================


address owner;
uint256 fee;
uint256 stor2;
uint256 pool;
uint256 costs;
mapping of uint256 players;

function pool() {
    return pool
}

function costs() {
    return costs
}

function owner() {
    return owner
}

function fee() {
    return fee
}

function players(address arg1) {
    require calldata.size - 4 >= 32
    return players[arg1]
}

function _fallback() payable {
    revert
}

function fund() payable {
    pool += msg.value
    return 1
}

function play() payable {
    require msg.value == fee
    pool = pool + fee - stor2
    costs += stor2
    players[address(msg.sender)] = msg.value
    return 1
}

function withdraw() {
    require msg.sender == owner
    costs = 0
    call msg.sender with:
       value costs wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function payWinner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    pool = 0
    call arg1 with:
       value pool wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
