contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[3141 len 32]
    stor3 = 0
    return code.data[143 len 2998]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
uint256 price;
uint256 stor3;

function getOwner() {
    return owner
}

function getPrice() {
    return price
}

function _fallback() payable {
  stop
}

function getCount() {
    if owner != msg.sender:
        return 0
    return stor3
}

function updatePrice(uint256 arg1) {
    if msg.sender == owner:
        price = arg1
}

function transferOwnership(address arg1) {
    if msg.sender == owner:
        owner = arg1
}

function drain() {
    if msg.sender == owner:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function sub_d07bdde3(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    mem[ceil32(arg1.length) + 128] = not not stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function lookup(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 224] = 0
    mem[ceil32(arg1.length) + 160] = ceil32(arg1.length) + 224
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 256 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 288 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 256] = 1
    _45 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 256 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 256 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length) + 352
    mem[ceil32(arg1.length) + 320] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 256 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length
    mem[0] = _45
    mem[ceil32(arg1.length) + 352] = stor[sha3(_45)]
    idx = ceil32(arg1.length) + 352
    s = 0
    while ceil32(arg1.length) + stor[_45].length + 320 > idx:
        mem[idx + 32] = stor[s + sha3(_45) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + 256] = ceil32(arg1.length) + 320
    mem[ceil32(arg1.length) + 288] = stor1[_45]
    mem[mem[64] + 32] = stor1[_45]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[ceil32(arg1.length) + 320]
    _89 = mem[ceil32(arg1.length) + 320]
    mem[mem[64] + 96 len ceil32(mem[ceil32(arg1.length) + 320])] = mem[ceil32(arg1.length) + 352 len ceil32(mem[ceil32(arg1.length) + 320])]
    if not _89 % 32:
        return 64, stor1[_45], mem[mem[64] + 64 len _89 + 32]
    mem[floor32(_89) + mem[64] + 96] = mem[floor32(_89) + mem[64] + -(_89 % 32) + 128 len _89 % 32]
    return 64, stor1[_45], mem[mem[64] + 64 len floor32(_89) + 64]
}

function sub_b66265dc(?) {
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ceil32(arg1.length) + ceil32(arg2.length) + 224
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    if msg.sender == owner:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[ceil32(arg1.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 256] = 1
        require not stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32] = mem[ceil32(arg1.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = 1
        stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 320 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][] = Array(len=arg1.length, data=arg1[all])
        stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 320, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))] = block.timestamp
        stor3++
}

function sub_ecde670c(?) payable {
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ceil32(arg1.length) + ceil32(arg2.length) + 224
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    if msg.value >= price:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[ceil32(arg1.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 256] = 1
        require not stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 256, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32] = mem[ceil32(arg1.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = 1
        stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 320 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][] = Array(len=arg1.length, data=arg1[all])
        stor1[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 320, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))] = block.timestamp
        stor3++
}



}
