contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[3357 len 20]
    stor2 = code.data[3377 len 32]
    return code.data[119 len 3226]
}



// =====================  Runtime code  =====================


const sub_b47be46a(?) = 10^14

const sub_f1a640f8(?) = 3

const MAX_PRICE = 100000


address owner;
address veTokenAddress;
uint256 ratio;
mapping of struct stor3;

function veToken() {
    return veTokenAddress
}

function ratio() {
    return ratio
}

function owner() {
    return owner
}

function destroy(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        mem[(32 * arg1.length) + 132] = owner
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_14))
        call address(_14).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        s = ext_call.return_data[0]
        s = _14
        idx = idx + 1
        continue 
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function checkRatio(uint256 arg1, uint256 arg2) {
    if not ratio:
        return (arg2 == arg1 * ratio / 10^18)
    require ratio
    require arg1 * ratio / ratio == arg1
    return (arg2 == arg1 * ratio / 10^18)
}

function sub_1ff2676f(?) payable {
    require stor3[arg1].field_0 <= 3
    require not stor3[arg1].field_0
    if ratio:
        require ratio
        require arg4 * ratio / ratio == arg4
    require msg.value == arg4 * ratio / 10^18
    require ext_code.size(veTokenAddress)
    call veTokenAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(veTokenAddress)
    call veTokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(ext_call.return_data[0]), arg4
    require ext_call.success
    require ext_call.return_data[0]
    require arg6 + block.timestamp >= block.timestamp
    stor3[arg1].field_0 = 1
    stor3[arg1].field_8 = arg2
    stor3[arg1].field_256 = arg3
    stor3[arg1].field_512 = block.timestamp
    stor3[arg1].field_768 = arg6 + block.timestamp
    stor3[arg1].field_1024 = msg.value
    stor3[arg1].field_1280 = arg5
    emit 0xd7e74b4f: block.timestamp, arg6 + block.timestamp, msg.value, arg5, arg1, arg2, arg3
}

function status(bytes32 arg1) {
    require stor3[arg1].field_0 <= 3
    if not stor3[arg1].field_0:
        return 0
    require stor3[arg1].field_0 <= 3
    if stor3[arg1].field_0 != 1:
        if stor3[arg1].field_0 <= 3:
            if stor3[arg1].field_0 == 3:
                if stor3[arg1].field_0 <= 3:
                    if stor3[arg1].field_512 <= stor3[arg1].field_768:
                        if (10^14 * stor3[arg1].field_768) - (10^14 * stor3[arg1].field_512) / 10^14 == stor3[arg1].field_768 - stor3[arg1].field_512:
                            return 3, (10^14 * stor3[arg1].field_768) - (10^14 * stor3[arg1].field_512), 0
    else:
        if block.timestamp >= stor3[arg1].field_768:
            if stor3[arg1].field_0 <= 3:
                if stor3[arg1].field_512 <= stor3[arg1].field_768:
                    if (10^14 * stor3[arg1].field_768) - (10^14 * stor3[arg1].field_512) / 10^14 == stor3[arg1].field_768 - stor3[arg1].field_512:
                        return 2, (10^14 * stor3[arg1].field_768) - (10^14 * stor3[arg1].field_512), 0
        else:
            if stor3[arg1].field_0 <= 3:
                if stor3[arg1].field_512 <= block.timestamp:
                    if (10^14 * block.timestamp) - (10^14 * stor3[arg1].field_512) / 10^14 == block.timestamp - stor3[arg1].field_512:
                        if block.timestamp <= stor3[arg1].field_768:
                            return 1, (10^14 * block.timestamp) - (10^14 * stor3[arg1].field_512), stor3[arg1].field_768 - block.timestamp
    revert
}

function withdraw(bytes32 arg1) {
    require stor3[arg1].field_0 <= 3
    require stor3[arg1].field_0 == 1
    require block.timestamp > stor3[arg1].field_768
    require stor3[arg1].field_0 <= 3
    require stor3[arg1].field_512 <= stor3[arg1].field_768
    require (10^14 * stor3[arg1].field_768) - (10^14 * stor3[arg1].field_512) / 10^14 == stor3[arg1].field_768 - stor3[arg1].field_512
    if (10^14 * stor3[arg1].field_768) - (10^14 * stor3[arg1].field_512):
        require (10^14 * stor3[arg1].field_768) - (10^14 * stor3[arg1].field_512)
        require (10^14 * stor3[arg1].field_768 * stor3[arg1].field_1280) - (10^14 * stor3[arg1].field_512 * stor3[arg1].field_1280) / (10^14 * stor3[arg1].field_768) - (10^14 * stor3[arg1].field_512) == stor3[arg1].field_1280
    require stor3[arg1].field_1280 <= 100000
    if (10^14 * stor3[arg1].field_768) - (10^14 * stor3[arg1].field_512):
        require (10^14 * stor3[arg1].field_768) - (10^14 * stor3[arg1].field_512)
        require (10 * 10^18 * stor3[arg1].field_768) - (10 * 10^18 * stor3[arg1].field_512) - (10^14 * stor3[arg1].field_768 * stor3[arg1].field_1280) + (10^14 * stor3[arg1].field_512 * stor3[arg1].field_1280) / (10^14 * stor3[arg1].field_768) - (10^14 * stor3[arg1].field_512) == -stor3[arg1].field_1280 + 100000
    emit 0xc0e20fa6: (10^14 * stor3[arg1].field_768 * stor3[arg1].field_1280) - (10^14 * stor3[arg1].field_512 * stor3[arg1].field_1280) / 100000, (10 * 10^18 * stor3[arg1].field_768) - (10 * 10^18 * stor3[arg1].field_512) - (10^14 * stor3[arg1].field_768 * stor3[arg1].field_1280) + (10^14 * stor3[arg1].field_512 * stor3[arg1].field_1280) / 100000, arg1, stor3[arg1].field_8, stor3[arg1].field_256
    call stor3[arg1].field_8 with:
       value (10^14 * stor3[arg1].field_768 * stor3[arg1].field_1280) - (10^14 * stor3[arg1].field_512 * stor3[arg1].field_1280) / 100000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor3[arg1].field_256 with:
       value ((10 * 10^18 * stor3[arg1].field_768) - (10 * 10^18 * stor3[arg1].field_512) - (10^14 * stor3[arg1].field_768 * stor3[arg1].field_1280) + (10^14 * stor3[arg1].field_512 * stor3[arg1].field_1280) / 100000) + stor3[arg1].field_1024 wei
         gas 2300 * is_zero(value) wei
    stor3[arg1].field_0 = 3
}



}
