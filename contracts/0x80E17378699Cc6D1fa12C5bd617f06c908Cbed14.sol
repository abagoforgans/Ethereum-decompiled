contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor8;
uint256 stor9;
uint8 stor10;

function _fallback() payable {
    stor3 = 5 * 10^15
    stor4 = 240
    stor5 = 10^10
    stor6 = 5 * 10^15
    stor8 = 4
    stor9 = 4
    stor10 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[110 len 2227]
}



// =====================  Runtime code  =====================


address owner;
address initiatorAddress;
address leaderAddress;
uint256 increment;
uint256 timeout;
uint256 sub_878f5965;
uint256 sub_8b2987e0;
uint256 sub_e5738e33;
uint256 sub_5c9633e6;
uint256 sub_f96fef51;
uint8 paused;

function leader() {
    return leaderAddress
}

function initiator() {
    return initiatorAddress
}

function sub_5c9633e6(?) {
    return sub_5c9633e6
}

function paused() {
    return bool(paused)
}

function timeout() {
    return timeout
}

function sub_878f5965(?) {
    return sub_878f5965
}

function sub_8b2987e0(?) {
    return sub_8b2987e0
}

function owner() {
    return owner
}

function increment() {
    return increment
}

function sub_e5738e33(?) {
    return sub_e5738e33
}

function sub_f96fef51(?) {
    return sub_f96fef51
}

function _fallback() payable {
    revert
}

function pause() {
    require owner == msg.sender
    paused = 1
}

function unPause() {
    require owner == msg.sender
    paused = 0
}

function sub_f577b1c2(?) {
    require owner == msg.sender
    require paused
    require not eth.balance(this.address)
    increment = arg1
}

function sub_0268d06c(?) {
    require owner == msg.sender
    require paused
    require not eth.balance(this.address)
    sub_f96fef51 = arg1
}

function sub_0a46c4d0(?) {
    require owner == msg.sender
    require paused
    require not eth.balance(this.address)
    sub_878f5965 = arg1
}

function sub_b56f827e(?) {
    require owner == msg.sender
    require paused
    require not eth.balance(this.address)
    sub_5c9633e6 = arg1
}

function updateMinBalance(uint256 arg1) {
    require owner == msg.sender
    require paused
    require not eth.balance(this.address)
    sub_8b2987e0 = arg1
}

function sub_a330214e(?) {
    require owner == msg.sender
    require paused
    require not eth.balance(this.address)
    require arg1 < 48 * 24 * 3600
    timeout = arg1
}

function sub_8cd36d98(?) {
    require sub_878f5965
    if increment > eth.balance(this.address) / sub_878f5965:
        return increment
    return (eth.balance(this.address) / sub_878f5965)
}

function newGame() payable {
    require not paused
    require not eth.balance(this.address)
    require msg.value >= sub_8b2987e0
    initiatorAddress = msg.sender
    leaderAddress = msg.sender
    sub_e5738e33 = block.number
}

function poke() payable {
    require eth.balance(this.address) > 0
    require sub_878f5965
    if increment > eth.balance(this.address) / sub_878f5965:
        require msg.value >= increment
    else:
        require msg.value >= eth.balance(this.address) / sub_878f5965
    sub_e5738e33 = block.number
    leaderAddress = msg.sender
}

function claimPayout() {
    require eth.balance(this.address) > 0
    if owner != msg.sender:
        if initiatorAddress != msg.sender:
            require leaderAddress == msg.sender
    require block.number - sub_e5738e33 >= timeout
    require sub_5c9633e6
    require sub_f96fef51
    call owner with:
       value eth.balance(this.address) / sub_5c9633e6 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call initiatorAddress with:
       value eth.balance(this.address) / sub_f96fef51 wei
         gas 2300 * is_zero(value) wei
    call leaderAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
