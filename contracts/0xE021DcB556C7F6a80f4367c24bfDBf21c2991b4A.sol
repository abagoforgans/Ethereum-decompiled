contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5; offset 160
uint256 stor5;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 10
    stor0.length.field_8 = 'eTrust 1.0' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor5.field_160) = 0
    stor1 = code.data[2280 len 32]
    stor2 = code.data[2312 len 32]
    require code.data[2356 len 20] != msg.sender
    require code.data[2388 len 20] != msg.sender
    uint256(stor5.field_0) = code.data[2344 len 32]
    stor4 = code.data[2376 len 32]
    stor3 = msg.sender or Mask(96, 160, stor3)
    uint8(stor5.field_160) = 1
    return code.data[619 len 1661]
}



// =====================  Runtime code  =====================


array of uint256 standard;
uint256 transactionFee;
uint256 sub_1a8315d5;
address masterAddress;
address sellerAddress;
uint8 stor5; offset 160
address buyerAddress;

function seller() payable {
    return sellerAddress
}

function sub_1a8315d5(?) payable {
    return sub_1a8315d5
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

function _fallback() payable {
    revert 
}

function sub_6d9aad2b(?) payable {
    require stor5 == 2
    call sellerAddress with:
       value sub_1a8315d5 wei
         gas 0 wei
    require ext_call.success
    stor5 = 3
}

function sub_2d606843(?) payable {
    require stor5 == 2
    require msg.sender == masterAddress
    call buyerAddress with:
       value sub_1a8315d5 wei
         gas 0 wei
    require ext_call.success
    stor5 = 4
}

function sub_e54a0b1c(?) payable {
    require stor5 == 1
    require msg.sender == buyerAddress
    require msg.value >= transactionFee
    require msg.value - transactionFee >= sub_1a8315d5
    call masterAddress with:
       value transactionFee wei
         gas 0 wei
    require ext_call.success
    if msg.value - transactionFee - sub_1a8315d5 > 0:
        call msg.sender with:
           value transactionFee wei
             gas 0 wei
        require ext_call.success
    stor5 = 2
}



}
