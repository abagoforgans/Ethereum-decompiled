contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 768]




// =====================  Runtime code  =====================


mapping of uint256 expiration;
mapping of uint256 balance;

function expiration(address arg1) payable {
    return expiration[arg1]
}

function balance(address arg1) payable {
    return balance[arg1]
}

function _fallback() payable {
    balance[address(msg.sender)] += msg.value
}

function redeem() payable {
    balance[address(msg.sender)] += msg.value
    if block.timestamp > expiration[address(msg.sender)]:
        call msg.sender with:
           value balance[address(msg.sender)] wei
             gas 0 wei
}

function lock(uint256 arg1) payable {
    balance[address(msg.sender)] += msg.value
    if arg1 <= block.timestamp:
        return 0
    if expiration[address(msg.sender)]:
        return 0
    expiration[address(msg.sender)] = arg1
    return 1
}



}
