contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor2 = code.data[781 len 32]
    return code.data[57 len 724]
}



// =====================  Runtime code  =====================


bool stor0;
uint256 stor0;
uint256 stor0; offset 1
uint256 stor0;
mapping of uint256 sub_4aefdccd;
uint256 stor2;
address owner;

function sub_4aefdccd(?) payable {
    return sub_4aefdccd[arg1]
}

function owner() payable {
    return owner
}

function deposit() payable {
    require sub_4aefdccd[address(msg.sender)] > 0
    uint256(stor0.field_0) += msg.value
    emit LogDepositMade(msg.sender, msg.value);
    return uint256(stor0.field_0)
}

function sub_0d3bb942(?) payable {
    if arg1 != 0:
        if sub_4aefdccd[address(msg.sender)] < arg1:
            sub_4aefdccd[address(msg.sender)] = arg1
    return sub_4aefdccd[address(msg.sender)]
}

function withdraw() payable {
    if uint256(stor0.field_0) > 0:
        if sub_4aefdccd[address(msg.sender)] < block.timestamp:
            uint256(stor0.field_0) = 0
            call 0xa34db78ec186426881811aa04090a0ced91f6e66 with:
               value uint256(stor0.field_0) wei
                 gas 0 wei
            if ext_call.success:
                sub_4aefdccd[address(msg.sender)] = block.timestamp + stor2
            else:
                bool(stor0.field_0) = 0
                uint255(stor0.field_1) = uint255(stor0.field_0)
    return uint256(stor0.field_0)
}

function _fallback() payable {
    emit 0x1e01c8d2: msg.value
    if msg.value != 10^12:
        if sub_4aefdccd[address(msg.sender)] <= 0:
            sub_4aefdccd[address(msg.sender)] = block.timestamp + stor2
        require sub_4aefdccd[address(msg.sender)] > 0
        uint256(stor0.field_0) += msg.value
        emit LogDepositMade(msg.sender, msg.value);
    else:
        require sub_4aefdccd[address(msg.sender)] > 0
        uint256(stor0.field_0) += msg.value
        emit LogDepositMade(msg.sender, msg.value);
        if uint256(stor0.field_0) > 0:
            if sub_4aefdccd[address(msg.sender)] < block.timestamp:
                uint256(stor0.field_0) = 0
                call 0xa34db78ec186426881811aa04090a0ced91f6e66 with:
                   value uint256(stor0.field_0) wei
                     gas 0 wei
                if ext_call.success:
                    sub_4aefdccd[address(msg.sender)] = block.timestamp + stor2
                else:
                    bool(stor0.field_0) = 0
                    uint255(stor0.field_1) = uint255(stor0.field_0)
}



}
