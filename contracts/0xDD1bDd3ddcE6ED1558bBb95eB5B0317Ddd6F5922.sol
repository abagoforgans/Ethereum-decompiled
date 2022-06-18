contract main {




// =====================  Runtime code  =====================


const sub_2f12313f(?) = 0xe6259607f8876d87cad42be003ee39649999430d825382960e3d25ca692d4fb0

const sub_7dc3f445(?) = 15


uint256 sub_4b28f9a2;

function sub_4b28f9a2(?) {
    return sub_4b28f9a2
}

function _fallback() payable {
  stop
}

function sub_084bf5a0(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    if sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) != 0xe6259607f8876d87cad42be003ee39649999430d825382960e3d25ca692d4fb0:
        revert with 0, 'incorrect password'
    sub_4b28f9a2++
    if sub_4b28f9a2 == 15:
        sub_4b28f9a2 = 0
        emit 0x8c49db3d: msg.sender, eth.balance(this.address)
        if eth.balance(this.address) > 0:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
