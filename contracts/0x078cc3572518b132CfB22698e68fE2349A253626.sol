contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 3209]
}



// =====================  Runtime code  =====================


uint128 stor0; offset 160
address stor0;
uint256 stor0;
address stor1;

function kill() payable {
    if stor1 != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function transfer(string arg1, string arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 452] = 12
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 484] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 504 len 12]
    call address(stor0.field_0).useCoupon(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=12, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 484])
    require ext_call.success
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) != 'b':
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) != 't':
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            require 2 < arg1.length
            if Mask(8, 248, mem[130]) != 'c':
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 448] = '{"pair":"eth_btc","withdrawal":"'
                idx = 0
                while idx < 32:
                    require idx < 32
                    require idx < 0
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 224] = Mask(8, 248, mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 448])
                    idx = idx + 1
                    continue 
                idx = 0
                s = 32
                while idx < arg2.length:
                    require idx < arg2.length
                    require s < 0
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + s + 224] = Mask(8, 248, mem[ceil32(arg1.length) + idx + 160])
                    idx = idx + 1
                    s = s + 1
                    continue 
                require arg2.length + 32 < 0
                mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 256] = 0x2200000000000000000000000000000000000000000000000000000000000000
                require arg2.length + 33 < 0
                mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 257] = 0x7d00000000000000000000000000000000000000000000000000000000000000
                require arg2.length + 34 < 0
                mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 258] = 0
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 544 len arg2.length] = arg2[all]
                emit 0x89fa2bf8: Array(len=arg2.length, data=arg2[all])
                call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
                uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 836] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 865 len 3]
                call address(stor0.field_0).getPrice(string rg1) with:
                     gas gas_remaining - 25050 wei
                    args Array(len=3, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 836])
                require ext_call.success
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 932] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 961 len 3]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 1028] = 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 1045 len 15]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 1156] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 1184 len 4]
                call address(stor0.field_0).query2(uint256 rg1, string rg2, string rg3, string rg4) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, 192, 288, 3, mem[ceil32(arg1.length) + ceil32(arg2.length) + 932], 49, 'json(https://shapeshift.io/shift', ').success.deposit', mem[ceil32(arg1.length) + ceil32(arg2.length) + 1028], 68, '{"pair":"eth_btc","withdrawal":"', '1MCwBbhNGp5hRm5rC1Aims2YFRe2SXPY', 'Kt"}' >> 256, mem[ceil32(arg1.length) + ceil32(arg2.length) + 1156]
                require ext_call.success
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
    call address(s) with:
       value eth.balance(this.address) wei
         gas 0 wei
    emit 0x6cceb87e: address(s), eth.balance(this.address)
}



}
