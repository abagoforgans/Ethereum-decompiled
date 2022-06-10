contract main {




// =====================  Runtime code  =====================


const sub_e4f891d7(?) = 2


mapping of struct stor0;
mapping of uint8 voteCount;

function voteCount(address arg1) {
    require calldata.size - 4 >= 32
    return voteCount[arg1]
}

function _fallback() payable {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
}

function proposeTransaction(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 160] = address(arg1)
    mem[ceil32(arg3.length) + 180] = arg2
    mem[ceil32(arg3.length) + 212 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 212] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 212] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
    mem[ceil32(arg3.length) + 128] = arg3.length + 52
    _52 = sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    if stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]][3][msg.sender].field_0:
        revert with 0, 'Already voted'
    if not stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_416:
        stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_0 = arg2
        stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_256 = arg1
        stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_416 = 1
        stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]][3][msg.sender].field_0 = 1
    else:
        stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_416 = uint8(stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_416 + 1)
        stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]][3][msg.sender].field_0 = 1
        if stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_416 >= 2:
            if not stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]][2].length:
                call stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_256 with:
                   value stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_0 = 0
                stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_256 = 0
                stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]].field_512 = 0
                if 31 < stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]][2].length:
                    idx = 0
                    while stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]][2].length + 31 / 32 > idx:
                        stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                mem[ceil32(arg3.length) + arg3.length + 212] = stor0[mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]][2].field_0
                idx = ceil32(arg3.length) + arg3.length + 212
                s = 0
                while ceil32(arg3.length) + arg3.length + stor0[_52][2].length + 212 > idx + 32:
                    mem[idx + 32] = stor0[_52][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor0[_52].field_256.mem[ceil32(arg3.length) + arg3.length + 212 len 4] with:
                   value stor0[_52].field_0 wei
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + arg3.length + 216 len stor0[_52][2].length - 4]
                require ext_call.success
                stor0[_52].field_0 = 0
                stor0[_52].field_256 = 0
                stor0[_52].field_512 = 0
                if 31 < stor0[_52][2].length:
                    idx = 0
                    while stor0[_52][2].length + 31 / 32 > idx:
                        stor0[_52][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
}



}
