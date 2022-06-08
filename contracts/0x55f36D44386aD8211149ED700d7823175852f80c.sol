contract main {




// =====================  Runtime code  =====================


address stor0;
array of address stor1;
array of uint256 stor16;
address owner;
mapping of uint256 balances;

function balances(address arg1) {
    return balances[arg1]
}

function adopters(uint256 arg1) {
    require arg1 < 16
    return stor[arg1]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function adopt(uint256 arg1) {
    require arg1 >= 0
    require arg1 <= 15
    require arg1 < 16
    stor[arg1] = msg.sender
    return arg1
}

function deposit(uint256 arg1) payable {
    require arg1 >= 0
    require arg1 <= 15
    require arg1 < 16
    stor16[arg1] = 12 * msg.value / 10
}

function getAdopters() {
    idx = 608
    s = 0
    while 1120 > idx + 32:
        mem[idx + 32] = address(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    return stor0, mem[640 len 480]
}

function getPrices() {
    idx = 608
    s = 16
    while 1120 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    return stor16.length, mem[640 len 480]
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    require arg1 < eth.balance(this.address)
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
