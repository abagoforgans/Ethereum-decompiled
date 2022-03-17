contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = 175200 * 24 * 3600
    return code.data[26 len 433]
}



// =====================  Runtime code  =====================


mapping of struct accounts;
uint256 duration;

function duration() payable {
    return duration
}

function accounts(address arg1) payable {
    return accounts[arg1].field_0, accounts[arg1].field_256
}

function withdraw() payable {
    if accounts[address(msg.sender)].field_0 > 0:
        if accounts[address(msg.sender)].field_256 > 0:
            if block.timestamp > accounts[address(msg.sender)].field_256:
                call msg.sender with:
                   value accounts[address(msg.sender)].field_0 wei
                     gas 0 wei
                accounts[address(msg.sender)].field_0 = 0
}

function _fallback() payable {
    if msg.value > 0:
        if accounts[address(msg.sender)].field_0 > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            accounts[address(msg.sender)].field_0 += msg.value
            accounts[address(msg.sender)].field_256 = block.timestamp + duration
    else:
        if accounts[address(msg.sender)].field_0 > 0:
            if accounts[address(msg.sender)].field_256 > 0:
                if block.timestamp > accounts[address(msg.sender)].field_256:
                    call msg.sender with:
                       value accounts[address(msg.sender)].field_0 wei
                         gas 0 wei
                    accounts[address(msg.sender)].field_0 = 0
}



}
