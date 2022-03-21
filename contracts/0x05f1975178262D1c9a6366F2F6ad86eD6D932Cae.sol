contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 915]
}



// =====================  Runtime code  =====================


uint8 sub_02c1d7b0; offset 160
address operatorAddress;
uint256 stor0;
mapping of uint256 balanceOf;
mapping of struct readings;

function sub_02c1d7b0(?) payable {
    return sub_02c1d7b0
}

function readings(address arg1) payable {
    return readings[arg1].field_0, readings[arg1].field_256, readings[arg1].field_512, readings[arg1].field_768
}

function operator() payable {
    return operatorAddress
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function _fallback() payable {
    revert 
}

function transferOperator(address arg1) payable {
    require msg.sender == operatorAddress
    stor0 = arg1 or Mask(96, 160, stor0)
}

function transfer(address arg1, uint256 arg2) payable {
    require msg.sender == operatorAddress
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sub_9a2f8ab6(?) payable {
    require operatorAddress == msg.sender
    require arg2 >= readings[address(arg1)].field_0
    require arg3 >= readings[address(arg1)].field_256
    require msg.sender == operatorAddress
    require balanceOf[address(arg1)] + arg2 - readings[address(arg1)].field_0 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = arg2 - readings[address(arg1)].field_0 + balanceOf[address(arg1)]
    emit Transfer((arg2 - readings[address(arg1)].field_0), msg.sender, arg1);
    readings[address(arg1)].field_0 = arg2 - readings[address(arg1)].field_768
    readings[address(arg1)].field_768 = arg2
    readings[address(arg1)].field_256 = arg3
    balanceOf[address(arg1)] = arg2
    call arg4.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    readings[address(arg1)].field_512 = ext_call.return_data[0]
}



}
