contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 4421]




// =====================  Runtime code  =====================


uint128 stor0; offset 160
address stor0;
uint256 stor0;
uint256 stor1;
address stor2;
uint256 stor2;
address stor3;
uint256 stor3;
array of struct stor4;
uint256 stor5;

function _fallback() payable {
  stop
}

function oraclize_setProof(bytes1 arg1) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 13
    mem[ceil32(arg2.length) + 160] = 'HackEtherCamp'
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[ceil32(arg2.length) + 196] = 32
    mem[ceil32(arg2.length) + 228] = 13
    mem[ceil32(arg2.length) + 260] = mem[ceil32(arg2.length) + 279 len 13]
    call address(stor0.field_0).useCoupon(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=13, data=mem[ceil32(arg2.length) + 260])
    require ext_call.success
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call address(ext_call.return_data[0]).cbAddress() with:
         gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    mem[64] = ceil32(arg2.length) + 224
    mem[ceil32(arg2.length) + 192] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                require idx < arg2.length
                idx = idx + 1
                s = (10 * s) + mem[idx + 128 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    if s >= stor1:
        call address(stor2) with:
           value eth.balance(this.address) wei
             gas 0 wei
    else:
        if block.timestamp > stor5:
            call address(stor3) with:
               value eth.balance(this.address) wei
                 gas 0 wei
        else:
            mem[ceil32(arg2.length) + 224] = 3
            mem[ceil32(arg2.length) + 256] = 0x55524c0000000000000000000000000000000000000000000000000000000000
            mem[64] = ceil32(arg2.length) + ceil32(stor4.length) + 320
            mem[ceil32(arg2.length) + 288] = stor4.length
            mem[ceil32(arg2.length) + 320] = uint256(stor4.field_0)
            idx = ceil32(arg2.length) + 320
            s = 0
            while ceil32(arg2.length) + stor4.length + 288 > idx:
                mem[idx + 32] = stor4[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
            mem[ceil32(arg2.length) + ceil32(stor4.length) + 388] = mem[ceil32(arg2.length) + ceil32(stor4.length) + 417 len 3]
            call address(stor0.field_0).getPrice(string rg1) with:
                 gas gas_remaining - 25050 wei
                args Array(len=3, data=mem[ceil32(arg2.length) + ceil32(stor4.length) + 388])
            require ext_call.success
            mem[ceil32(arg2.length) + ceil32(stor4.length) + 320] = 0xadf59f9900000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg2.length) + ceil32(stor4.length) + 324] = 600
            mem[ceil32(arg2.length) + ceil32(stor4.length) + 356] = 96
            mem[ceil32(arg2.length) + ceil32(stor4.length) + 420] = 3
            mem[ceil32(arg2.length) + ceil32(stor4.length) + 452] = mem[ceil32(arg2.length) + ceil32(stor4.length) + 481 len 3]
            mem[ceil32(arg2.length) + ceil32(stor4.length) + 388] = 160
            mem[ceil32(arg2.length) + ceil32(stor4.length) + 484] = stor4.length
            mem[ceil32(arg2.length) + ceil32(stor4.length) + 516 len stor4.length] = mem[ceil32(arg2.length) + 320 len stor4.length]
            if not stor4.length % 32:
                call address(stor0.field_0).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 600, 96, 160, 3, mem[ceil32(arg2.length) + ceil32(stor4.length) + 452], stor4.length, mem[ceil32(arg2.length) + 320 len stor4.length]
            else:
                mem[floor32(stor4.length) + ceil32(arg2.length) + ceil32(stor4.length) + 516] = mem[floor32(stor4.length) + ceil32(arg2.length) + ceil32(stor4.length) + -stor4.length % 32 + 548 len stor4.length % 32]
                call address(stor0.field_0).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 600, 96, 160, 3, mem[ceil32(arg2.length) + ceil32(stor4.length) + 452], stor4.length, mem[ceil32(arg2.length) + ceil32(stor4.length) + 516 len floor32(stor4.length) + 32]
            require ext_call.success
}

function escrow(uint256 arg1, string arg2, address arg3, uint256 arg4) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 0
    mem[ceil32(arg2.length) + 320] = 0
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[ceil32(arg2.length) + 484] = mem[ceil32(arg2.length) + 503 len 13]
    call address(stor0.field_0).useCoupon(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=13, data=mem[ceil32(arg2.length) + 484])
    require ext_call.success
    stor1 = arg1
    uint256(stor2) = arg3 or Mask(96, 160, uint256(stor2))
    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
    call 0x0.0xcae22f15 with:
         gas gas_remaining - 25050 wei
    call address(ext_call.return_data[0]).0x5668c972 with:
         gas gas_remaining - 25050 wei
    call address(ext_call.return_data[0]).addressToPersonId(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg3
    mem[ceil32(arg2.length) + 548] = ext_call.return_data[0]
    call address(ext_call.return_data[0]).getScore(uint256 rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args ext_call.return_data[0], ext_call.return_data[0]
    mem[ceil32(arg2.length) + 544] = ').data.confirmed_balance'
    mem[ceil32(arg2.length) + 580] = arg2.length + 26
    idx = 0
    s = 0
    while idx < 0:
        require idx < 0
        require s < arg2.length + 26
        mem[ceil32(arg2.length) + s + 612 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require s < arg2.length + 26
        mem[ceil32(arg2.length) + s + 612 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    require arg2.length < arg2.length + 26
    mem[ceil32(arg2.length) + arg2.length + 612 len 8] = 47
    mem[ceil32(arg2.length) + arg2.length + 613 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 58, ('mul', -1, ('div', ('add', -1, ('ext_call.return_data', 0, 32)), 100000)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 58, ('mul', -1, ('div', ('add', -1, ('ext_call.return_data', 0, 32)), 100000)))), 0) - 256
    idx = 0
    s = arg2.length + 2
    while idx < 24:
        require idx < 24
        require s < arg2.length + 26
        mem[ceil32(arg2.length) + s + 612 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 544, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 544, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    stor4[].field_0 = Array(len=arg2.length + 26, data=mem[ceil32(arg2.length) + 612 len arg2.length + 26])
    stor5 = arg4
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[ceil32(arg2.length) + (32 * arg2.length + 26) + 744] = mem[ceil32(arg2.length) + (32 * arg2.length + 26) + 773 len 3]
    call address(stor0.field_0).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[ceil32(arg2.length) + (32 * arg2.length + 26) + 744])
    require ext_call.success
    mem[ceil32(arg2.length) + (32 * arg2.length + 26) + 808] = mem[ceil32(arg2.length) + (32 * arg2.length + 26) + 837 len 3]
    mem[ceil32(arg2.length) + (32 * arg2.length + 26) + 872 len arg2.length + 26] = mem[ceil32(arg2.length) + 612 len arg2.length + 26]
    if not arg2.length + 26 % 32:
        call address(stor0.field_0).query(uint256 rg1, string rg2, string rg3) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args 0, 96, 160, 3, mem[ceil32(arg2.length) + (32 * arg2.length + 26) + 808], arg2.length + 26, mem[ceil32(arg2.length) + 612 len arg2.length + 26]
    else:
        mem[floor32(arg2.length + 26) + ceil32(arg2.length) + (32 * arg2.length + 26) + 872] = mem[floor32(arg2.length + 26) + ceil32(arg2.length) + (32 * arg2.length + 26) + -(arg2.length + 26 % 32) + 904 len arg2.length + 26 % 32]
        call address(stor0.field_0).query(uint256 rg1, string rg2, string rg3) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args 0, 96, 160, 3, mem[ceil32(arg2.length) + (32 * arg2.length + 26) + 808], arg2.length + 26, mem[ceil32(arg2.length) + 612 len arg2.length + 26], mem[ceil32(arg2.length) + (32 * arg2.length + 26) + arg2.length + 898 len floor32(arg2.length + 26) + -arg2.length + 6]
    require ext_call.success
}



}
