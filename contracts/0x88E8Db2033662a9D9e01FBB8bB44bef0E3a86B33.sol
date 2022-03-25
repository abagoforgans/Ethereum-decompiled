contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor2 = code.data[598 len 32]
    return code.data[57 len 541]
}



// =====================  Runtime code  =====================


bool stor0;
uint256 stor0;
uint256 stor0; offset 1
uint256 stor0;
uint256 stor1;
uint256 stor2;
address owner;

function owner() payable {
    return owner
}

function sub_0d3bb942(?) payable {
    if arg1 != 0:
        if stor1 < arg1:
            stor1 = arg1
    return stor1
}

function deposit() payable {
    require stor1 > 0
    uint256(stor0.field_0) += msg.value
    emit LogDepositMade(msg.sender, msg.value);
    return uint256(stor0.field_0)
}

function withdraw() payable {
    if uint256(stor0.field_0) > 0:
        if stor1 < block.timestamp:
            uint256(stor0.field_0) = 0
            call 0xa34db78ec186426881811aa04090a0ced91f6e66 with:
               value uint256(stor0.field_0) wei
                 gas 0 wei
            if ext_call.success:
                stor1 = block.timestamp + stor2
            else:
                bool(stor0.field_0) = 0
                uint255(stor0.field_1) = uint255(stor0.field_0)
    return uint256(stor0.field_0)
}

function _fallback() payable {
    emit 0x1e01c8d2: msg.value
    if msg.value != 10^12:
        if stor1 <= 0:
            stor1 = block.timestamp + stor2
            revert 
        uint256(stor0.field_0) += msg.value
        emit LogDepositMade(msg.sender, msg.value);
    else:
        require stor1 > 0
        uint256(stor0.field_0) += msg.value
        emit LogDepositMade(msg.sender, msg.value);
        if uint256(stor0.field_0) > 0:
            if stor1 < block.timestamp:
                uint256(stor0.field_0) = 0
                call 0xa34db78ec186426881811aa04090a0ced91f6e66 with:
                   value uint256(stor0.field_0) wei
                     gas 0 wei
                if ext_call.success:
                    stor1 = block.timestamp + stor2
                else:
                    bool(stor0.field_0) = 0
                    uint255(stor0.field_1) = uint255(stor0.field_0)
}



}
