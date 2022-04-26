contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 2467]
}



// =====================  Runtime code  =====================


address stor0;
uint256 numberOfNames;
array of uint256 names;
mapping of uint256 bank;

function bank(address arg1) {
    return bank[arg1]
}

function names(address arg1) {
    return names[arg1][0 len names[arg1].length]
}

function numberOfNames() {
    return numberOfNames
}

function _fallback() payable {
    revert
}

function pullFunds() {
    require bank[address(msg.sender)] > 0
    bank[address(msg.sender)] = 0
    call msg.sender with:
       value bank[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setName(string arg1) payable {
    if msg.value < 10^15:
        require numberOfNames < 500
    numberOfNames++
    names[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    bank[stor0] += msg.value
    emit AddedName(Array(len=arg1.length, data=arg1[all]), block.timestamp, msg.value, msg.sender, stor0);
}

function setNameRefer(string arg1, address arg2) payable {
    if msg.value < 10^15:
        require numberOfNames < 500
    require arg2 != msg.sender
    numberOfNames++
    names[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    bank[stor0] += msg.value / 10
    bank[address(arg2)] = bank[address(arg2)] + msg.value - (msg.value / 10)
    emit AddedName(Array(len=arg1.length, data=arg1[all]), block.timestamp, msg.value, msg.sender, arg2);
}



}
