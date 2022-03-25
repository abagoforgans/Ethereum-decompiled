contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor2 = code.data[976 len 32]
    return code.data[57 len 919]
}



// =====================  Runtime code  =====================


mapping of struct balances;
mapping of uint256 sub_4aefdccd;
uint256 stor2;
address owner;

function balances(address arg1) payable {
    return balances[arg1].field_0
}

function sub_4aefdccd(?) payable {
    return sub_4aefdccd[arg1]
}

function owner() payable {
    return owner
}

function balance() payable {
    return balances[address(msg.sender)].field_0
}

function sub_0d3bb942(?) payable {
    if arg1 != 0:
        if sub_4aefdccd[address(msg.sender)] < arg1:
            sub_4aefdccd[address(msg.sender)] = arg1
    return sub_4aefdccd[address(msg.sender)]
}

function deposit() payable {
    require sub_4aefdccd[address(msg.sender)] > 0
    balances[address(msg.sender)].field_0 += msg.value
    emit LogDepositMade(msg.sender, msg.value);
    return balances[address(msg.sender)].field_0
}

function withdraw() payable {
    if balances[address(msg.sender)].field_0 > 0:
        if sub_4aefdccd[address(msg.sender)] < block.timestamp:
            balances[address(msg.sender)].field_0 = 0
            call 0xa34db78ec186426881811aa04090a0ced91f6e66 with:
               value balances[address(msg.sender)].field_0 wei
                 gas 0 wei
            if ext_call.success:
                sub_4aefdccd[address(msg.sender)] = block.timestamp + stor2
            else:
                balances[address(msg.sender)].field_0 = 0
                balances[address(msg.sender)].field_1 = balances[address(msg.sender)].field_0
    return balances[address(msg.sender)].field_0
}

function _fallback() payable {
    emit 0x1e01c8d2: msg.value
    if msg.value != 10^12:
        if sub_4aefdccd[address(msg.sender)] <= 0:
            sub_4aefdccd[address(msg.sender)] = block.timestamp + stor2
        require sub_4aefdccd[address(msg.sender)] > 0
        balances[address(msg.sender)].field_0 += msg.value
        emit LogDepositMade(msg.sender, msg.value);
    else:
        require sub_4aefdccd[address(msg.sender)] > 0
        balances[address(msg.sender)].field_0 += msg.value
        emit LogDepositMade(msg.sender, msg.value);
        if balances[address(msg.sender)].field_0 > 0:
            if sub_4aefdccd[address(msg.sender)] < block.timestamp:
                balances[address(msg.sender)].field_0 = 0
                call 0xa34db78ec186426881811aa04090a0ced91f6e66 with:
                   value balances[address(msg.sender)].field_0 wei
                     gas 0 wei
                if ext_call.success:
                    sub_4aefdccd[address(msg.sender)] = block.timestamp + stor2
                else:
                    balances[address(msg.sender)].field_0 = 0
                    balances[address(msg.sender)].field_1 = balances[address(msg.sender)].field_0
}



}
