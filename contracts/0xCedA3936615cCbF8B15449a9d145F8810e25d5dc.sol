contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor2;
array of address stor3;
mapping of uint256 stor257;
uint256 stor261;
uint256 stor262;

function _fallback() payable {
    stor261 = 2
    stor262 = 0
    require not msg.value
    mem[96 len -3021] = code.data[3344 len -3021]
    mem[64] = -2925
    stor2 = msg.sender
    mem[0] = msg.sender
    mem[32] = 257
    stor257[address(msg.sender)] = 1
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require idx + 2 < 256
        stor3[idx] = mem[mem[96] + (32 * idx) + 140 len 20]
        require idx < mem[mem[96] + 96]
        mem[0] = mem[mem[96] + (32 * idx) + 140 len 20]
        mem[32] = 257
        stor257[mem[mem[96] + (32 * idx) + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    stor0 = stor261
    require stor261 <= 256
    return code.data[323 len 3021]
}



// =====================  Runtime code  =====================


uint256 stor0;
array of address owner;
mapping of uint256 stor257;
mapping of struct stor258;
array of uint256 stor259;
mapping of struct stor260;
uint256 required;

function getOwner(uint256 arg1) {
    require arg1 + 1 < 256
    return owner[arg1]
}

function required() {
    return required
}

function isOwner(address arg1) {
    return (stor257[address(arg1)] > 0)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function hasConfirmed(bytes32 arg1, address arg2) {
    if stor257[address(arg2)]:
        return stor258[arg1].field_256 and 2^stor257[address(arg2)] != 0
    else:
        return 0
}

function revoke(bytes32 arg1) {
    if stor257[address(msg.sender)]:
        if 2^stor257[address(msg.sender)] and stor258[arg1].field_256 > 0:
            stor258[arg1].field_0++
            stor258[arg1].field_256 -= 2^stor257[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function sub_40404e3c(?) {
    require stor257[address(msg.sender)] > 0
    mem[116] = arg2
    mem[148 len arg4.length] = arg4[all]
    mem[arg4.length + 148] = arg3
    mem[128 len arg5.length] = arg5[all]
    if mem[192 len 1] >= 27:
        signer = erecover(sha3(arg1, arg2, arg4[all], arg3), mem[161] << 248, mem[128], mem[160]) 
    else:
        if uint8(mem[192 len 1] + 27) != 27:
            require 28 == uint8(mem[192 len 1] + 27)
        signer = erecover(sha3(arg1, arg2, arg4[all], arg3), mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
    require erecover.result
    require address(signer) != msg.sender
    require stor257[address(signer)] > 0
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34710 wei
        args arg4[all]
    require ext_call.success
}

function confirm(bytes32 arg1) {
    require stor257[address(msg.sender)]
    if not stor258[arg1].field_0:
        stor258[arg1].field_0 = stor0
        stor258[arg1].field_256 = 0
        stor259.length++
        if not stor259.length <= stor259.length + 1:
            idx = stor259.length + 1
            while stor259.length > idx:
                stor259[idx] = 0
                idx = idx + 1
                continue 
        stor258[arg1].field_512 = stor259.length
        require stor259.length < stor259.length
        stor259[stor259.length] = arg1
    if stor258[arg1].field_256 and 2^stor257[address(msg.sender)] != 0:
        return 0
    mem[128] = arg1
    emit Confirmation(msg.sender, arg1);
    if stor258[arg1].field_0 > 1:
        stor258[arg1].field_0--
        stor258[arg1].field_256 = 2^stor257[address(msg.sender)] or stor258[arg1].field_256
        return 0
    require stor258[arg1].field_512 < stor259.length
    stor259[stor258[arg1].field_512] = 0
    stor258[arg1].field_0 = 0
    stor258[arg1].field_256 = 0
    stor258[arg1].field_512 = 0
    if not stor260[arg1].field_0:
        return 0
    mem[96] = stor260[arg1][2].field_0
    idx = 96
    s = 0
    while stor260[arg1][2].length + 96 > idx + 32:
        mem[idx + 32] = stor260[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call stor260[arg1].field_0.mem[96 len 4] with:
       value stor260[arg1].field_256 wei
         gas gas_remaining - 34710 wei
        args mem[100 len stor260[arg1][2].length + (floor32(stor260[arg1][2].length - 1) + -stor260[arg1][2].length + 32 % 32) - 4]
    require ext_call.success
    mem[288] = stor260[arg1][2].field_0
    idx = 288
    s = 0
    while stor260[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = stor260[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit MultiTransact(msg.sender, arg1, stor260[arg1].field_256, stor260[arg1].field_0, Array(len=stor260[arg1][2].length, data=mem[288 len stor260[arg1][2].length + (floor32(stor260[arg1][2].length - 1) + -stor260[arg1][2].length + 32 % 32)]));
    stor260[arg1].field_0 = 0
    stor260[arg1].field_256 = 0
    stor260[arg1].field_512 = 0
    if 31 < stor260[arg1][2].length:
        idx = 0
        while stor260[arg1][2].length + 31 / 32 > idx:
            stor260[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    require stor257[address(msg.sender)] > 0
    mem[96 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 96] = block.number
    require stor257[address(msg.sender)]
    if not stor258[call.data[0 len calldata.size]][block.number].field_0:
        stor258[call.data[0 len calldata.size]][block.number].field_0 = stor0
        stor258[call.data[0 len calldata.size]][block.number].field_256 = 0
        stor259.length++
        if not stor259.length <= stor259.length + 1:
            idx = stor259.length + 1
            while stor259.length > idx:
                stor259[idx] = 0
                idx = idx + 1
                continue 
        stor258[call.data[0 len calldata.size]][block.number].field_512 = stor259.length
        require stor259.length < stor259.length
        stor259[stor259.length] = sha3(call.data[0 len calldata.size], block.number)
    if stor258[call.data[0 len calldata.size]][block.number].field_256 and 2^stor257[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]][block.number].field_0:
            stor260[call.data[0 len calldata.size]][block.number].field_0 = arg1
            stor260[call.data[0 len calldata.size]][block.number].field_256 = arg2
            stor260[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
            s = 0
            idx = arg3 + 36
            while arg3 + arg3.length + 36 > idx:
                stor260[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg3.length + 31) >> 5
            while stor260[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                stor260[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
            emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
    else:
        mem[128] = sha3(call.data[0 len calldata.size], block.number)
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size], block.number));
        if stor258[call.data[0 len calldata.size]][block.number].field_0 > 1:
            stor258[call.data[0 len calldata.size]][block.number].field_0--
            stor258[call.data[0 len calldata.size]][block.number].field_256 = 2^stor257[address(msg.sender)] or stor258[call.data[0 len calldata.size]][block.number].field_256
            if not stor260[call.data[0 len calldata.size]][block.number].field_0:
                stor260[call.data[0 len calldata.size]][block.number].field_0 = arg1
                stor260[call.data[0 len calldata.size]][block.number].field_256 = arg2
                stor260[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                s = 0
                idx = arg3 + 36
                while arg3 + arg3.length + 36 > idx:
                    stor260[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg3.length + 31) >> 5
                while stor260[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                    stor260[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
                emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
        else:
            require stor258[call.data[0 len calldata.size]][block.number].field_512 < stor259.length
            stor259[stor258[call.data[0 len calldata.size]][block.number].field_512] = 0
            stor258[call.data[0 len calldata.size]][block.number].field_0 = 0
            stor258[call.data[0 len calldata.size]][block.number].field_256 = 0
            stor258[call.data[0 len calldata.size]][block.number].field_512 = 0
            if not stor260[call.data[0 len calldata.size]][block.number].field_0:
                if not stor260[call.data[0 len calldata.size]][block.number].field_0:
                    stor260[call.data[0 len calldata.size]][block.number].field_0 = arg1
                    stor260[call.data[0 len calldata.size]][block.number].field_256 = arg2
                    stor260[call.data[0 len calldata.size]][block.number].field_512 = (2 * arg3.length) + 1
                    s = 0
                    idx = arg3 + 36
                    while arg3 + arg3.length + 36 > idx:
                        stor260[call.data[0 len calldata.size]][block.number][s + 2].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg3.length + 31) >> 5
                    while stor260[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                        stor260[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit ConfirmationNeeded(sha3(call.data[0 len calldata.size], block.number), msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
            else:
                mem[96] = stor260[call.data[0 len calldata.size]][block.number][2].field_0
                idx = 96
                s = 0
                while stor260[call.data[0 len calldata.size]][block.number][2].length + 96 > idx + 32:
                    mem[idx + 32] = stor260[call.data[0 len calldata.size]][block.number][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor260[call.data[0 len calldata.size]][block.number].field_0.mem[96 len 4] with:
                   value stor260[call.data[0 len calldata.size]][block.number].field_256 wei
                     gas gas_remaining - 34710 wei
                    args mem[100 len stor260[call.data[0 len calldata.size]][block.number][2].length + (floor32(stor260[call.data[0 len calldata.size]][block.number][2].length - 1) + -stor260[call.data[0 len calldata.size]][block.number][2].length + 32 % 32) - 4]
                require ext_call.success
                mem[288] = stor260[call.data[0 len calldata.size]][block.number][2].field_0
                idx = 288
                s = 0
                while stor260[call.data[0 len calldata.size]][block.number][2].length + 288 > idx + 32:
                    mem[idx + 32] = stor260[call.data[0 len calldata.size]][block.number][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit MultiTransact(msg.sender, sha3(call.data[0 len calldata.size], block.number), stor260[call.data[0 len calldata.size]][block.number].field_256, stor260[call.data[0 len calldata.size]][block.number].field_0, Array(len=stor260[call.data[0 len calldata.size]][block.number][2].length, data=mem[288 len stor260[call.data[0 len calldata.size]][block.number][2].length + (floor32(stor260[call.data[0 len calldata.size]][block.number][2].length - 1) + -stor260[call.data[0 len calldata.size]][block.number][2].length + 32 % 32)]));
                stor260[call.data[0 len calldata.size]][block.number].field_0 = 0
                stor260[call.data[0 len calldata.size]][block.number].field_256 = 0
                stor260[call.data[0 len calldata.size]][block.number].field_512 = 0
                if 31 < stor260[call.data[0 len calldata.size]][block.number][2].length:
                    idx = 0
                    while stor260[call.data[0 len calldata.size]][block.number][2].length + 31 / 32 > idx:
                        stor260[call.data[0 len calldata.size]][block.number][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
    return sha3(call.data[0 len calldata.size], block.number)
}



}
