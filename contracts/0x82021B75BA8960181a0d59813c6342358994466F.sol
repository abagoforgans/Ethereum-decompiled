contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor1;
uint8 stor2; offset 160
uint256 stor2;

function _fallback() payable {
    stor0 = 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8
    uint8(stor2.field_160) = 0
    uint256(stor2.field_0) = msg.sender or Mask(96, 160, uint256(stor2.field_0))
    call stor0.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    call address(stor1).setProofType(bytes1 rg1) with:
         gas gas_remaining - 25050 wei
        args 0x1100000000000000000000000000000000000000000000000000000000000000
    return code.data[562 len 2844]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
uint8 sub_f0251c86; offset 160
address owner;
address requesterAddress;
uint256 stor3;
array of uint256 requestResult;

function requestResult() payable {
    return requestResult[0 len requestResult.length]
}

function owner() payable {
    return owner
}

function requester() payable {
    return address(requesterAddress)
}

function sub_f0251c86(?) payable {
    return sub_f0251c86
}

function __callback(bytes32 arg1, string arg2, bytes arg3) payable {
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    call stor0.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    call address(stor1).cbAddress() with:
         gas gas_remaining - 25050 wei
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = ext_call.return_data[0]
    require msg.sender == ext_call.return_data[12 len 20]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        call address(requesterAddress) with:
             gas gas_remaining - 25050 wei
            args arg2[all]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 160] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
        call address(requesterAddress).mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len 4] with:
             gas gas_remaining - 25050 wei
            args mem[ceil32(arg2.length) + ceil32(arg3.length) + 164 len floor32(arg2.length) + 28]
    requestResult[] = Array(len=arg2.length, data=arg2[all])
    call owner with:
       value eth.balance(this.address) wei
         gas 0 wei
    sub_f0251c86 = 0
}

function ping(string arg1) payable {
    require not sub_f0251c86
    require msg.value >= 10^17
    call stor0.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    mem[ceil32(arg1.length) + 260] = mem[ceil32(arg1.length) + 289 len 3]
    call address(stor1).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[ceil32(arg1.length) + 260])
    require ext_call.success
    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
        mem[ceil32(arg1.length) + 324] = mem[ceil32(arg1.length) + 353 len 3]
        mem[ceil32(arg1.length) + 388 len arg1.length] = arg1[all]
        if not arg1.length % 32:
            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, 160, 3, mem[ceil32(arg1.length) + 324], arg1.length, arg1[all]
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 388] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 420 len arg1.length % 32]
            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, 160, 3, mem[ceil32(arg1.length) + 324], arg1.length, arg1[all], mem[ceil32(arg1.length) + arg1.length + 388 len -(arg1.length % 32) + 32]
        require ext_call.success
    sub_f0251c86 = 1
    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
}

function _fallback() payable {
    require not sub_f0251c86
    require msg.value >= 10^17
    call stor0.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    mem[ceil32(calldata.size) + 260] = mem[ceil32(calldata.size) + 289 len 3]
    call address(stor1).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[ceil32(calldata.size) + 260])
    require ext_call.success
    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
        mem[ceil32(calldata.size) + 324] = mem[ceil32(calldata.size) + 353 len 3]
        mem[ceil32(calldata.size) + 388 len calldata.size] = call.data[0 len calldata.size]
        if not calldata.size % 32:
            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, 160, 3, mem[ceil32(calldata.size) + 324], calldata.size, call.data[0 len calldata.size]
        else:
            mem[floor32(calldata.size) + ceil32(calldata.size) + 388] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 420 len calldata.size % 32]
            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, 160, 3, mem[ceil32(calldata.size) + 324], calldata.size, call.data[0 len calldata.size], mem[ceil32(calldata.size) + calldata.size + 388 len -(calldata.size % 32) + 32]
        require ext_call.success
    sub_f0251c86 = 1
    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
}



}
