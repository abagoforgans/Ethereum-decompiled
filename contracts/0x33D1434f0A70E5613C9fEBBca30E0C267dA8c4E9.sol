contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address owner;
address beneficiaryAddress;
uint256 cliff;
uint256 start;
uint256 duration;
uint8 stor6;
mapping of uint256 released;
mapping of uint8 stor8;
mapping of uint8 stor99;

function duration() {
    return duration
}

function cliff() {
    return cliff
}

function beneficiary() {
    return beneficiaryAddress
}

function revocable() {
    return bool(stor6)
}

function owner() {
    return owner
}

function released(address arg1) {
    return released[arg1]
}

function start() {
    return start
}

function revoked(address arg1) {
    return bool(stor8[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function initialize(address arg1) {
    mem[224 len 0] = None
    _93 = sha3(mem[224 len 7], 0)
    mem[224 len 0] = None
    mem[224 len 27] = mem[224 len 7], 0
    require not stor[_93][mem[224 len 5]]
    owner = arg1
    emit Migrated(string arg1, string arg2):
                  64,
                  128,
                  7,
                  'Ownable' << 200,
                  5,
                  '1.9.0' % 1099511627776,
    stor0[0] = 1
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    mem[224 len 0] = None
    _401 = sha3(mem[224 len 12], 0)
    mem[224 len 0] = None
    mem[224 len 27] = mem[224 len 12], 0
    require not stor[_401][mem[224 len 5]]
    mem[352 len 0] = None
    _1180 = sha3(mem[352 len 7], 0)
    mem[352 len 0] = None
    mem[352 len 27] = mem[352 len 7], 0
    require not stor[_1180][mem[352 len 5]]
    owner = arg1
    emit Migrated(string arg1, string arg2):
                  64,
                  128,
                  7,
                  'Ownable' << 200,
                  5,
                  '1.9.0' % 1099511627776,
    stor0[0] = 1
    require arg2
    require arg4 <= arg5
    beneficiaryAddress = arg2
    stor6 = uint8(arg6)
    duration = arg5
    require arg3 + arg4 >= arg3
    cliff = arg3 + arg4
    start = arg3
    emit Migrated(string arg1, string arg2):
                  64,
                  128,
                  12,
                  'TokenVesting' << 160,
                  5,
                  '1.9.0' % 1099511627776,
    stor0[0] = 1
}

function vestedAmount(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + released[address(arg1)] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        return 0
    require start + duration >= start
    if block.timestamp >= start + duration:
        return (ext_call.return_data[0] + released[address(arg1)])
    if stor8[address(arg1)]:
        return (ext_call.return_data[0] + released[address(arg1)])
    require start <= block.timestamp
    if not ext_call.return_data[0] + released[address(arg1)]:
        if duration:
            return (0 / duration)
    else:
        if ext_call.return_data[0] + released[address(arg1)]:
            if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == block.timestamp - start:
                if duration:
                    return ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration)
    revert
}

function isMigrated(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    _22 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = _22
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = bool(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg1.length) + ceil32(arg2.length) + 160
       len 32
}

function releasableAmount(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + released[address(arg1)] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        if released[address(arg1)] <= 0:
            return -released[address(arg1)]
    else:
        if start + duration >= start:
            if block.timestamp >= start + duration:
                if released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]:
                    return ext_call.return_data[0]
            else:
                if stor8[address(arg1)]:
                    if released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]:
                        return ext_call.return_data[0]
                else:
                    if start <= block.timestamp:
                        if not ext_call.return_data[0] + released[address(arg1)]:
                            if duration:
                                if released[address(arg1)] <= 0 / duration:
                                    return ((0 / duration) - released[address(arg1)])
                        else:
                            if ext_call.return_data[0] + released[address(arg1)]:
                                if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == block.timestamp - start:
                                    if duration:
                                        if released[address(arg1)] <= (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration:
                                            return (((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)])
    revert
}

function revoke(address arg1) {
    require msg.sender == owner
    require stor6
    require not stor8[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + released[address(arg1)] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require released[address(arg1)] <= 0
        require -released[address(arg1)] <= ext_call.return_data[0]
        stor8[address(arg1)] = 1
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0] + released[address(arg1)]
    else:
        require start + duration >= start
        if block.timestamp >= start + duration:
            require released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]
            require ext_call.return_data[0] <= ext_call.return_data[0]
            stor8[address(arg1)] = 1
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, 0
        else:
            if stor8[address(arg1)]:
                require released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]
                require ext_call.return_data[0] <= ext_call.return_data[0]
                stor8[address(arg1)] = 1
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, 0
            else:
                require start <= block.timestamp
                if not ext_call.return_data[0] + released[address(arg1)]:
                    require duration
                    require released[address(arg1)] <= 0 / duration
                    require (0 / duration) - released[address(arg1)] <= ext_call.return_data[0]
                    stor8[address(arg1)] = 1
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] - (0 / duration) + released[address(arg1)]
                else:
                    require ext_call.return_data[0] + released[address(arg1)]
                    require (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == block.timestamp - start
                    require duration
                    require released[address(arg1)] <= (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration
                    require ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)] <= ext_call.return_data[0]
                    stor8[address(arg1)] = 1
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) + released[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Revoked()
}

function release(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + released[address(arg1)] >= ext_call.return_data[0]
    if block.timestamp < cliff:
        require released[address(arg1)] <= 0
        require -released[address(arg1)] > 0
        require 0 >= released[address(arg1)]
        released[address(arg1)] = 0
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, -released[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit Released(-released[address(arg1)]);
    else:
        require start + duration >= start
        if block.timestamp >= start + duration:
            require released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]
            require ext_call.return_data[0] > 0
            require released[address(arg1)] + ext_call.return_data[0] >= released[address(arg1)]
            released[address(arg1)] += ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit Released(ext_call.return_data[0]);
        else:
            if stor8[address(arg1)]:
                require released[address(arg1)] <= ext_call.return_data[0] + released[address(arg1)]
                require ext_call.return_data[0] > 0
                require released[address(arg1)] + ext_call.return_data[0] >= released[address(arg1)]
                released[address(arg1)] += ext_call.return_data[0]
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit Released(ext_call.return_data[0]);
            else:
                require start <= block.timestamp
                if not ext_call.return_data[0] + released[address(arg1)]:
                    require duration
                    require released[address(arg1)] <= 0 / duration
                    require (0 / duration) - released[address(arg1)] > 0
                    require 0 / duration >= released[address(arg1)]
                    released[address(arg1)] = 0 / duration
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, (0 / duration) - released[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit Released(((0 / duration) - released[address(arg1)]));
                else:
                    require ext_call.return_data[0] + released[address(arg1)]
                    require (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] == block.timestamp - start
                    require duration
                    require released[address(arg1)] <= (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration
                    require ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)] > 0
                    require (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration >= released[address(arg1)]
                    released[address(arg1)] = (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit Released((((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)]));
}



}
