contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
address stor1;
address stor2;
address croupierAddress;

function croupier() {
    return croupierAddress
}

function kill() {
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function setSigner(address arg1) {
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    stor2 = arg1
}

function setCroupier(address arg1) {
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    croupierAddress = arg1
}

function withdraw(address arg1, uint256 arg2) payable {
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function doRollBet(uint256 arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5) payable {
    if arg2 < block.number:
        revert with 0, 'commit has expired'
    signer = erecover(sha3(arg2 % 1099511627776, Mask(216, 40, arg3) >> 40, mem[197 len 5]), 27, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if stor2 != address(signer):
        signer = erecover(sha3(arg2 % 1099511627776, Mask(216, 40, arg3) >> 40, mem[197 len 5]), 28, arg4, arg5) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if stor2 != address(signer):
            revert with 0, 'signer valid error'
    if arg1 <= 0:
        revert with 0, 'invalid value'
    if arg1 >= 100:
        revert with 0, 'invalid value'
    require msg.value >= 10^15
    require msg.value <= 10 * 10^18
    require not stor0[arg3].field_256
    stor0[arg3].field_0 = 0
    stor0[arg3].field_768 = arg1
    stor0[arg3].field_512 = msg.value
    stor0[arg3].field_256 = msg.sender
    stor0[arg3].field_1024 = block.number
    emit BetEvent(uint256 arg1, bytes32 arg2, bytes arg3):
                  stor0[arg3].field_0,
                  arg3,
                  96,
                  0,
}

function doResult(uint256 arg1, bytes32 arg2, bytes32 arg3, uint256 arg4) payable {
    if croupierAddress != msg.sender:
        revert with 0, 'not croupier'
    require block.hash(stor0[arg1].field_1024) == arg2
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 == 1:
            mem[384] = stor0[arg1][5].field_0
            idx = 384
            s = 0
            while stor0[arg1][5].length + 352 > idx:
                mem[idx + 32] = stor0[arg1][s + 5].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if croupierAddress != msg.sender:
                revert with 0, 'not croupier'
            call stor0[arg1].field_256 with:
               value 10^16 * arg4 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                emit PaymentFail(stor0[arg1].field_256, 10^16 * arg4);
            else:
                emit RoulettePayment(stor0[arg1].field_256, stor0[arg1].field_0, 10^16 * arg4, arg1, arg1 % 37, stor0[arg1].field_512, arg3, Array(len=stor0[arg1][5].length, data=mem[384 len stor0[arg1][5].length]));
    else:
        idx = 384
        s = 0
        while stor0[arg1][5].length + 352 > idx:
            mem[idx + 32] = stor0[arg1][s + 5].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if croupierAddress != msg.sender:
            revert with 0, 'not croupier'
        if arg1 % 100 > stor0[arg1].field_768:
            call stor0[arg1].field_256 with:
                 gas 2300 wei
            if not ext_call.success:
                emit PaymentFail(stor0[arg1].field_256, 0);
            else:
                emit RollPayment(stor0[arg1].field_256, stor0[arg1].field_0, 0, arg1, arg1 % 100, stor0[arg1].field_512, stor0[arg1].field_768, arg3);
        else:
            require stor0[arg1].field_768
            if stor0[arg1].field_512 / 100 >= 3 * 10^14:
                call stor0[arg1].field_256 with:
                   value (100 * stor0[arg1].field_512) - (100 * stor0[arg1].field_512 / 100) / stor0[arg1].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    emit PaymentFail(stor0[arg1].field_256, (100 * stor0[arg1].field_512) - (100 * stor0[arg1].field_512 / 100) / stor0[arg1].field_768);
                else:
                    emit RollPayment(stor0[arg1].field_256, stor0[arg1].field_0, (100 * stor0[arg1].field_512) - (100 * stor0[arg1].field_512 / 100) / stor0[arg1].field_768, arg1, arg1 % 100, stor0[arg1].field_512, stor0[arg1].field_768, arg3);
            else:
                call stor0[arg1].field_256 with:
                   value (100 * stor0[arg1].field_512) - 3 * 10^16 / stor0[arg1].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    emit PaymentFail(stor0[arg1].field_256, (100 * stor0[arg1].field_512) - 3 * 10^16 / stor0[arg1].field_768);
                else:
                    emit RollPayment(stor0[arg1].field_256, stor0[arg1].field_0, (100 * stor0[arg1].field_512) - 3 * 10^16 / stor0[arg1].field_768, arg1, arg1 % 100, stor0[arg1].field_512, stor0[arg1].field_768, arg3);
}

function doRouletteBet(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5) payable {
    mem[128 len arg1.length] = arg1[all]
    if arg2 < block.number:
        revert with 0, 'commit has expired'
    mem[ceil32(arg1.length) + 160] = arg2 << 216
    mem[ceil32(arg1.length) + 165] = arg3
    mem[ceil32(arg1.length) + 128] = 37
    _90 = sha3(arg2 % 1099511627776, Mask(216, 40, arg3) >> 40, mem[ceil32(arg1.length) + 229 len 5])
    mem[ceil32(arg1.length) + 229] = sha3(arg2 % 1099511627776, Mask(216, 40, arg3) >> 40, mem[ceil32(arg1.length) + 229 len 5])
    mem[ceil32(arg1.length) + 261] = 27
    mem[ceil32(arg1.length) + 293] = arg4
    mem[ceil32(arg1.length) + 325] = arg5
    signer = erecover(_90, 27, arg4, arg5) 
    mem[ceil32(arg1.length) + 197] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if stor2 != address(signer):
        mem[ceil32(arg1.length) + 261] = _90
        mem[ceil32(arg1.length) + 293] = 28
        mem[ceil32(arg1.length) + 325] = arg4
        mem[ceil32(arg1.length) + 357] = arg5
        signer = erecover(_90, 28, arg4, arg5) 
        mem[ceil32(arg1.length) + 229] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if stor2 != address(signer):
            revert with 0, 'signer valid error'
    require 0 < arg1.length
    require arg1.length == (Mask(8, 248, mem[128]) >> 247) + 1
    idx = 0
    s = 0
    while idx < mem[128 len 1]:
        require (2 * idx) + 2 < arg1.length
        idx = idx + 1
        s = s + mem[(2 * idx) + 130 len 1]
        continue 
    require 10^16 * s * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] * mem[128 len 1] == msg.value
    require not stor0[arg3].field_256
    stor0[arg3].field_0 = 1
    stor0[arg3][5][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[arg3].field_512 = msg.value
    stor0[arg3].field_256 = msg.sender
    stor0[arg3].field_1024 = block.number
    emit BetEvent(stor0[arg3].field_0, arg3, Array(len=arg1.length, data=arg1[all]));
}



}
