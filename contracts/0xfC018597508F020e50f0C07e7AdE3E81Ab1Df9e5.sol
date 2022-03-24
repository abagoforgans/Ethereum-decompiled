contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor4;
uint256 stor5;
uint8 stor6; offset 160
address stor6;
uint256 stor6;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 10
    stor0.length.field_8 = 'eTrust 1.5' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor6.field_160) = 1
    stor1 = code.data[2991 len 32]
    stor2 = code.data[3023 len 32]
    require code.data[3067 len 20] != msg.sender
    require code.data[3099 len 20] != msg.sender
    uint256(stor6.field_0) = msg.sender or Mask(96, 160, uint256(stor6.field_0))
    stor5 = code.data[3087 len 32]
    uint256(stor4) = code.data[3055 len 32]
    require uint8(stor6.field_160) == 1
    require msg.sender == address(stor6.field_0)
    require msg.value >= stor1
    require msg.value - stor1 >= stor2
    call address(stor4) with:
       value stor1 wei
         gas 0 wei
    require ext_call.success
    stor3 = msg.value - stor1 - stor2
    if stor3 > 0:
        call msg.sender with:
           value stor3 wei
             gas 0 wei
        require ext_call.success
    uint8(stor6.field_160) = 2
    return code.data[1000 len 1991]
}



// =====================  Runtime code  =====================


array of uint256 standard;
uint256 transactionFee;
uint256 sub_1a8315d5;
uint256 excess;
address masterAddress;
address sellerAddress;
uint8 stor6; offset 160
address buyerAddress;

function seller() payable {
    return sellerAddress
}

function sub_1a8315d5(?) payable {
    return sub_1a8315d5
}

function excess() payable {
    return excess
}

function standard() payable {
    return standard[0 len standard.length]
}

function buyer() payable {
    return buyerAddress
}

function transactionFee() payable {
    return transactionFee
}

function master() payable {
    return masterAddress
}

function kill() payable {
    if masterAddress != msg.sender:
    selfdestruct(masterAddress)
}

function _fallback() payable {
    revert 
}

function sub_2d606843(?) payable {
    require stor6 == 2
    require msg.sender == masterAddress
    call buyerAddress with:
       value sub_1a8315d5 wei
         gas 0 wei
    require ext_call.success
    stor6 = 4
}

function sub_6d9aad2b(?) payable {
    require stor6 == 2
    require msg.sender == masterAddress
    call sellerAddress with:
       value sub_1a8315d5 wei
         gas 0 wei
    require ext_call.success
    stor6 = 3
}

function sub_e54a0b1c(?) payable {
    require stor6 == 1
    require msg.sender == buyerAddress
    require msg.value >= transactionFee
    require msg.value - transactionFee >= sub_1a8315d5
    call masterAddress with:
       value transactionFee wei
         gas 0 wei
    require ext_call.success
    excess = msg.value - transactionFee - sub_1a8315d5
    if excess > 0:
        call msg.sender with:
           value excess wei
             gas 0 wei
        require ext_call.success
    stor6 = 2
}



}
