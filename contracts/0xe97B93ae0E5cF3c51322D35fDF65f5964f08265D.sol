contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor3 = '1234'
    stor4 = '5678'
    stor5 = 100
    stor6 = 0
    stor7 = 0
    return code.data[120 len 2774]
}



// =====================  Runtime code  =====================


array of uint256 name;
uint256 start;
uint256 duration;
uint256 sub_9adbbbbf;
uint256 sub_a4ff3da2;
uint256 sub_ae101242;
uint256 sub_045dbec3;
uint256 result;
address stor8;

function sub_045dbec3(?) payable {
    return sub_045dbec3
}

function name() payable {
    return name[0 len name.length]
}

function duration() payable {
    return duration
}

function result() payable {
    return result
}

function sub_9adbbbbf(?) payable {
    return sub_9adbbbbf
}

function sub_a4ff3da2(?) payable {
    return sub_a4ff3da2
}

function sub_ae101242(?) payable {
    return sub_ae101242
}

function start() payable {
    return start
}

function _fallback() payable {
  stop
}

function Fund() payable {
    call stor8.Withdraw(bytes32 rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args sub_9adbbbbf, sub_ae101242
    require ext_call.success
}

function sub_3d36c2e5(?) payable {
    if block.timestamp < start + (24 * 3600 * duration):
        mem[256] = mem[285 len 3]
        return Array(len=3, data=mem[256])
    if result == 1:
        call stor8.0x8ff6507f with:
             gas gas_remaining - 25050 wei
            args sub_9adbbbbf, sub_ae101242
    else:
        if result == 2:
            call stor8.0x8ff6507f with:
                 gas gas_remaining - 25050 wei
                args sub_a4ff3da2, sub_ae101242
        else:
            if sub_045dbec3 == 1:
                call stor8.0x8ff6507f with:
                     gas gas_remaining - 25050 wei
                    args sub_9adbbbbf, sub_ae101242
            else:
                if sub_045dbec3 != 2:
                    call stor8.0x8ff6507f with:
                         gas gas_remaining - 25050 wei
                        args sub_9adbbbbf, sub_ae101242
                    require ext_call.success
                    mem[320] = mem[348 len 4]
                    return Array(len=4, data=mem[320])
                call stor8.0x8ff6507f with:
                     gas gas_remaining - 25050 wei
                    args sub_a4ff3da2, sub_ae101242
    require ext_call.success
    mem[288] = mem[318 len 2]
    return Array(len=2, data=mem[288])
}

function sub_1a83e5a1(?) payable {
    if block.timestamp >= start + (24 * 3600 * duration):
        if result == 1:
            call stor8.0x8ff6507f with:
                 gas gas_remaining - 25050 wei
                args sub_9adbbbbf, sub_ae101242
        else:
            if result == 2:
                call stor8.0x8ff6507f with:
                     gas gas_remaining - 25050 wei
                    args sub_a4ff3da2, sub_ae101242
            else:
                if sub_045dbec3 == 1:
                    call stor8.0x8ff6507f with:
                         gas gas_remaining - 25050 wei
                        args sub_9adbbbbf, sub_ae101242
                else:
                    if sub_045dbec3 != 2:
                        call stor8.0x8ff6507f with:
                             gas gas_remaining - 25050 wei
                            args sub_9adbbbbf, sub_ae101242
                        require ext_call.success
                        mem[352] = mem[380 len 4]
                        return Array(len=4, data=mem[352])
                    call stor8.0x8ff6507f with:
                         gas gas_remaining - 25050 wei
                        args sub_a4ff3da2, sub_ae101242
        require ext_call.success
        mem[320] = mem[350 len 2]
        return Array(len=2, data=mem[320])
    if arg1 != sub_a4ff3da2:
        sub_045dbec3 = arg2
        mem[256] = mem[284 len 4]
        return Array(len=4, data=mem[256])
    result = arg2
    if result == 1:
        call stor8.0x8ff6507f with:
             gas gas_remaining - 25050 wei
            args sub_9adbbbbf, sub_ae101242
    else:
        if result == 2:
            call stor8.0x8ff6507f with:
                 gas gas_remaining - 25050 wei
                args sub_a4ff3da2, sub_ae101242
        else:
            if sub_045dbec3 == 1:
                call stor8.0x8ff6507f with:
                     gas gas_remaining - 25050 wei
                    args sub_9adbbbbf, sub_ae101242
            else:
                if sub_045dbec3 != 2:
                    call stor8.0x8ff6507f with:
                         gas gas_remaining - 25050 wei
                        args sub_9adbbbbf, sub_ae101242
                    require ext_call.success
                    mem[320] = mem[348 len 4]
                    return Array(len=4, data=mem[320])
                call stor8.0x8ff6507f with:
                     gas gas_remaining - 25050 wei
                    args sub_a4ff3da2, sub_ae101242
    require ext_call.success
    mem[288] = mem[318 len 2]
    return Array(len=2, data=mem[288])
}



}
