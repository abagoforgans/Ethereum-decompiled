contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[36 len 3222]
}



// =====================  Runtime code  =====================


uint128 stor0; offset 160
address stor0;
uint256 stor0;
mapping of uint256 sub_59eaac53;
address stor2;
uint256 stor2;

function sub_59eaac53(?) payable {
    return sub_59eaac53[arg1]
}

function kill() payable {
    if address(stor2) != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if msg.sender == address(stor2):
        uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function sub_5ad77157(?) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
}

function transfer(string arg1, string arg2) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = 12
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = 'HACKinDUBLIN'
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 452] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 472 len 12]
    call address(stor0.field_0).useCoupon(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=12, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 452])
    require ext_call.success
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) != 'b':
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        return 0
    require 1 < arg1.length
    if Mask(8, 248, mem[129]) != 't':
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        return 0
    require 2 < arg1.length
    if Mask(8, 248, mem[130]) != 'c':
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        return 0
    if arg2.length > 35:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        return 0
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 512
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384] = 70
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 416] = '{"pair":"eth_btc","withdrawal":"'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448] = '                                '
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 480] = '      '
    idx = 0
    s = 32
    while idx < arg2.length:
        require idx < arg2.length
        require s < 70
        mem[s + ceil32(arg1.length) + ceil32(arg2.length) + 416] = Mask(8, 248, mem[ceil32(arg1.length) + idx + 160])
        idx = idx + 1
        s = s + 1
        continue 
    require arg2.length + 32 < 70
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = '"'
    require arg2.length + 33 < 70
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 449] = '}'
    idx = arg2.length + 34
    while idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 384]:
        require idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 384]
        mem[idx + ceil32(arg1.length) + ceil32(arg2.length) + 416] = 0
        idx = idx + 1
        continue 
    _721 = mem[64]
    mem[64] = mem[64] + 64
    mem[_721] = 3
    mem[_721 + 32] = 'URL'
    _722 = mem[64]
    mem[64] = mem[64] + 96
    mem[_722] = 41
    mem[_722 + 32] = 'json(https://shapeshift.io/shift'
    mem[_722 + 64] = ').deposit'
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[mem[64] + 68] = mem[mem[64] + 97 len 3]
    call address(stor0.field_0).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[mem[64] + 68])
    require ext_call.success
    mem[mem[64]] = 0x7722865900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = 3
    mem[mem[64] + 164] = mem[mem[64] + 193 len 3]
    mem[mem[64] + 68] = 192
    mem[mem[64] + 196] = 41
    mem[mem[64] + 228 len 41] = 'json(https://shapeshift.io/shift', ').deposit'
    mem[mem[64] + 260] = mem[mem[64] + 283 len 9]
    mem[mem[64] + 100] = 288
    mem[mem[64] + 292] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 384]
    _879 = mem[ceil32(arg1.length) + ceil32(arg2.length) + 384]
    mem[mem[64] + 324 len mem[ceil32(arg1.length) + ceil32(arg2.length) + 384]] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 416 len mem[ceil32(arg1.length) + ceil32(arg2.length) + 384]]
    if not _879 % 32:
        call address(stor0.field_0).query2(uint256 rg1, string rg2, string rg3, string rg4) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args 0, 128, 192, 288, 3, mem[mem[64] + 164], 41, 'json(https://shapeshift.io/shift', ').deposit', mem[mem[64] + 260 len _879 + 64]
    else:
        mem[floor32(_879) + mem[64] + 324] = mem[floor32(_879) + mem[64] + -(_879 % 32) + 356 len _879 % 32]
        call address(stor0.field_0).query2(uint256 rg1, string rg2, string rg3, string rg4) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args 0, 128, 192, 288, 3, mem[mem[64] + 164], 41, 'json(https://shapeshift.io/shift', ').deposit', mem[mem[64] + 260 len floor32(_879) + 96]
    require ext_call.success
    sub_59eaac53[ext_call.return_data[0]] = msg.value
    return ext_call.return_data[0]
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call address(ext_call.return_data[0]).cbAddress() with:
         gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    mem[64] = ceil32(arg2.length) + 160
    mem[ceil32(arg2.length) + 128] = 0
    idx = 2
    s = 0
    s = 0
    s = 0
    while idx < 42:
        require idx < arg2.length
        require idx + 1 < arg2.length
        if mem[idx + 128 len 1] >= 97:
            if mem[idx + 128 len 1] <= 102:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1] - 87
                        s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) - 87
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87)
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87)
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 87
                s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) - 48
                continue 
        if mem[idx + 128 len 1] < 48:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 48
            continue 
        if mem[idx + 128 len 1] > 57:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 48
            continue 
        if mem[idx + 129 len 1] >= 97:
            if mem[idx + 129 len 1] <= 102:
                idx = idx + 2
                s = mem[idx + 129 len 1] - 87
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) - 87
                continue 
        if mem[idx + 129 len 1] < 48:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48)
            continue 
        if mem[idx + 129 len 1] > 57:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48)
            continue 
        idx = idx + 2
        s = mem[idx + 129 len 1] - 48
        s = mem[idx + 128 len 1] - 48
        s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) - 48
        continue 
    sub_59eaac53[arg1] = 0
    call address(s) with:
       value sub_59eaac53[arg1] - (10^13 * 3600) wei
         gas 0 wei
}



}
