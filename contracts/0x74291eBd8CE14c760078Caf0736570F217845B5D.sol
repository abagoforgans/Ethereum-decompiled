contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0x3ae1631cf21fa7000ae72dd2f5daca8ed49b3529
    call stor0.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    stor1 = ext_call.return_data[0] or Mask(96, 160, stor1)
    return code.data[266 len 1972]
}



// =====================  Runtime code  =====================


address stor1;
address sub_6a67498eAddress;
uint256 stor2;

function sub_6a67498e(?) payable {
    return address(sub_6a67498eAddress)
}

function kill() payable {
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function update() payable {
    call stor1.0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data='URL')
    require ext_call.success
    call stor1 with:
       value ext_call.return_data[0] wei
         gas 0 wei
    call stor1.0xa4c8a1c1 with:
         gas gas_remaining - 25050 wei
        args 0, 0, 128, 192, 288, 3, 'URL', 54, 'json(https://shapeshift.io/senda', 'mount).success.deposit', 88, '{"pair": "eth_btc", "amount": "0', '.2", "withdrawal": "1AAcCo21EUc1', 'jbocjssSQDzLna9Vem2UN5"}'
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[64] = ceil32(arg2.length) + 160
    mem[ceil32(arg2.length) + 128] = 0
    call stor1.0x4c773795 with:
         gas gas_remaining - 25050 wei
    mem[ceil32(arg2.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
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
                        s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 87
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1]
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 87
                s = (256 * s) + (16 * mem[idx + 128 len 1] - 87) + mem[idx + 129 len 1] - 48
                continue 
        if mem[idx + 128 len 1] < 48:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
            continue 
        if mem[idx + 128 len 1] > 57:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1]
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = (256 * s) + (Mask(8, 248, mem[idx + 128]) >> 244) + mem[idx + 129 len 1] - 48
            continue 
        if mem[idx + 129 len 1] >= 97:
            if mem[idx + 129 len 1] <= 102:
                idx = idx + 2
                s = mem[idx + 129 len 1] - 87
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 87
                continue 
        if mem[idx + 129 len 1] < 48:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
            continue 
        if mem[idx + 129 len 1] > 57:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1]
            continue 
        idx = idx + 2
        s = mem[idx + 129 len 1] - 48
        s = mem[idx + 128 len 1] - 48
        s = (256 * s) + (16 * mem[idx + 128 len 1] - 48) + mem[idx + 129 len 1] - 48
        continue 
    uint256(stor2) = s or Mask(96, 160, uint256(stor2))
}



}
