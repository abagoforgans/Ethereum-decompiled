contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[36 len 1973]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
uint256 stor3;
mapping of struct stor4;
mapping of struct stor5;
mapping of uint256 stor6;

function _fallback() payable {
    revert 
}

function getAvailable() payable {
    return (eth.balance(this.address) - stor3)
}

function onEtherandomExec(bytes32 arg1, bytes32 arg2, uint256 arg3) payable {
    call stor0.0x1f6e5117 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    stor3 -= 2
    if stor6[arg1] != sha3(arg2):
        call stor5[arg1].field_0 with:
           value 1 wei
             gas 0 wei
    else:
        if mulmod(arg2, stor5[arg1].field_256, 100) != arg3:
            call stor5[arg1].field_0 with:
               value 1 wei
                 gas 0 wei
        else:
            if arg3 < 50:
                call stor5[arg1].field_0 with:
                   value 2 wei
                     gas 0 wei
    stor6[arg1] = 0
    stor5[arg1].field_0 = 0
    stor5[arg1].field_256 = 0
}

function roll() payable {
    require 1 == msg.value
    require eth.balance(this.address) - stor3 >= 2
    call stor0.0x32a2c5d0 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != 0:
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).0xf909d60d with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    else:
        if ext_code.size(0x5be0372559e0275c0c415ab48eb0e211bc2f52a8) > 0:
            stor0 = 0x5be0372559e0275c0c415ab48eb0e211bc2f52a8
        else:
            if ext_code.size(0xf6d9979499491c1c0c9ef518860f4476c1cd551a) > 0:
                stor0 = 0xf6d9979499491c1c0c9ef518860f4476c1cd551a
        call stor0.0x32a2c5d0 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).0xf909d60d with:
             gas gas_remaining - 25050 wei
    call address(ext_call.return_data[0]).0x288c6ed2 with:
         gas gas_remaining - 25050 wei
        args ext_call.return_data[0]
    call address(stor1).0x7d94792a with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
    stor4[ext_call.return_data[0]].field_0 = stor4[ext_call.return_data[0]].field_160
    stor4[ext_call.return_data[0]].field_256 = 0
    stor3 += 2
}

function rollWithSeed(bytes32 arg1) payable {
    require 1 == msg.value
    require eth.balance(this.address) - stor3 >= 2
    call stor0.0x32a2c5d0 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != 0:
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).0xf909d60d with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    else:
        if ext_code.size(0x5be0372559e0275c0c415ab48eb0e211bc2f52a8) > 0:
            stor0 = 0x5be0372559e0275c0c415ab48eb0e211bc2f52a8
        else:
            if ext_code.size(0xf6d9979499491c1c0c9ef518860f4476c1cd551a) > 0:
                stor0 = 0xf6d9979499491c1c0c9ef518860f4476c1cd551a
        call stor0.0x32a2c5d0 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).0xf909d60d with:
             gas gas_remaining - 25050 wei
    call address(ext_call.return_data[0]).0x288c6ed2 with:
         gas gas_remaining - 25050 wei
        args ext_call.return_data[0]
    call address(stor1).0x7d94792a with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
    stor4[ext_call.return_data[0]].field_0 = stor4[ext_call.return_data[0]].field_160
    stor4[ext_call.return_data[0]].field_256 = arg1
    stor3 += 2
}

function onEtherandomSeed(bytes32 arg1, bytes32 arg2) payable {
    call stor0.0x1f6e5117 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    call stor0.0x32a2c5d0 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != 0:
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).0xf909d60d with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    else:
        if ext_code.size(0x5be0372559e0275c0c415ab48eb0e211bc2f52a8) > 0:
            stor0 = 0x5be0372559e0275c0c415ab48eb0e211bc2f52a8
        else:
            if ext_code.size(0xf6d9979499491c1c0c9ef518860f4476c1cd551a) > 0:
                stor0 = 0xf6d9979499491c1c0c9ef518860f4476c1cd551a
        call stor0.0x32a2c5d0 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).0xf909d60d with:
             gas gas_remaining - 25050 wei
    call address(ext_call.return_data[0]).0x2fa7cbfb with:
         gas gas_remaining - 25050 wei
        args ext_call.return_data[0]
    call address(stor1).0x9f87acd0 with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args arg2, stor4[arg1].field_256, 100
    stor5[ext_call.return_data[0]].field_0 = stor4[arg1].field_0
    stor5[ext_call.return_data[0]].field_256 = stor4[arg1].field_256
    stor6[ext_call.return_data[0]] = arg2
    stor4[arg1].field_0 = 0
    stor4[arg1].field_256 = 0
}



}
