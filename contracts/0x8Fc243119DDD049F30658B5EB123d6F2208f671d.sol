contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[37 len 1739]
}



// =====================  Runtime code  =====================


address stor0;
uint32 stor1;
uint32 stor1; offset 160
uint128 stor1; offset 160
address stor1;
uint256 stor1;
mapping of struct sub_e31e5c3d;

function sub_e31e5c3d(?) payable {
    return sub_e31e5c3d[arg1 << 224].field_0, 
           sub_e31e5c3d[arg1 << 224].field_0,
           sub_e31e5c3d[arg1 << 224].field_256,
           sub_e31e5c3d[arg1 << 224].field_512
}

function _fallback() payable {
  stop
}

function sub_d2424162(?) payable {
    if msg.sender == stor0:
        uint256(stor1.field_0) = arg1 or Mask(96, 160, uint256(stor1.field_0))
}

function sub_c532892c(?) payable {
    idx = 0
    while uint32(idx) < uint32(stor1.field_160):
        mem[0] = uint32(idx)
        mem[32] = 2
        if sub_e31e5c3d[idx << 224].field_0 != arg1:
            idx = idx + 1
            continue 
        mem[0] = uint32(idx)
        mem[32] = 2
        if arg2 != sub_e31e5c3d[idx << 224].field_160:
            idx = idx + 1
            continue 
        return uint32(idx)
    return test266151307()
}

function sub_6497fc25(?) payable {
    idx = 0
    while uint32(idx) < uint32(stor1.field_160):
        mem[0] = uint32(idx)
        mem[32] = 2
        if sub_e31e5c3d[idx << 224].field_256:
            mem[32] = 2
            mem[0] = 0
            if sub_e31e5c3d[0].field_160 <= sub_e31e5c3d[idx << 224].field_160:
                mem[0] = 0
                mem[32] = 2
                if sub_e31e5c3d[0].field_160 == sub_e31e5c3d[idx << 224].field_160:
                    mem[0] = 0
                    mem[32] = 2
        idx = idx + 1
        continue 
    return 0
}

function sub_31a00e51(?) payable {
    idx = 0
    while uint32(idx) < uint32(stor1.field_160):
        mem[0] = uint32(idx)
        mem[32] = 2
        if sub_e31e5c3d[idx << 224].field_0 != msg.sender:
            idx = idx + 1
            continue 
        mem[0] = uint32(idx)
        mem[32] = 2
        if arg1 != sub_e31e5c3d[idx << 224].field_160:
            idx = idx + 1
            continue 
        if uint32(idx) != test266151307():
            if sub_e31e5c3d[idx << 224].field_256 >= arg2:
                call msg.sender with:
                   value arg2 wei
                     gas 0 wei
}

function sub_4ad211ca(?) payable {
    idx = 0
    while uint32(idx) < uint32(stor1.field_160):
        mem[0] = uint32(idx)
        mem[32] = 2
        if sub_e31e5c3d[idx << 224].field_0 != msg.sender:
            idx = idx + 1
            continue 
        mem[0] = uint32(idx)
        mem[32] = 2
        if arg1 != sub_e31e5c3d[idx << 224].field_160:
            idx = idx + 1
            continue 
        if test266151307() == uint32(idx):
            sub_e31e5c3d[uint32(stor1.field_0)].field_0 = msg.sender or Mask(96, 160, sub_e31e5c3d[uint32(stor1.field_0)].field_0)
            sub_e31e5c3d[uint32(stor1.field_160)].field_160 = Mask(96, 0, arg1)
            Mask(96, 0, stor1.field_160) = Mask(96, 0, uint32(stor1.field_160) + 1)
        if not sub_e31e5c3d[uint32(stor1.field_0)].field_256:
            sub_e31e5c3d[uint32(stor1.field_0)].field_512 = block.timestamp
        sub_e31e5c3d[uint32(stor1.field_0)].field_256 += msg.value
    sub_e31e5c3d[uint32(stor1.field_0)].field_0 = msg.sender or Mask(96, 160, sub_e31e5c3d[uint32(stor1.field_0)].field_0)
    sub_e31e5c3d[uint32(stor1.field_160)].field_160 = Mask(96, 0, arg1)
    Mask(96, 0, stor1.field_160) = Mask(96, 0, uint32(stor1.field_160) + 1)
    if not sub_e31e5c3d[uint32(stor1.field_0)].field_256:
        sub_e31e5c3d[uint32(stor1.field_0)].field_512 = block.timestamp
    sub_e31e5c3d[uint32(stor1.field_0)].field_256 += msg.value
}

function sub_f77df859(?) payable {
    if address(stor1.field_0) == msg.sender:
        idx = arg2
        while idx:
            s = 0
            while uint32(s) < uint32(stor1.field_160):
                mem[0] = uint32(s)
                mem[32] = 2
                if sub_e31e5c3d[s << 224].field_256:
                    mem[32] = 2
                    mem[0] = 0
                    if sub_e31e5c3d[0].field_160 <= sub_e31e5c3d[s << 224].field_160:
                        mem[0] = 0
                        mem[32] = 2
                        if sub_e31e5c3d[0].field_160 == sub_e31e5c3d[s << 224].field_160:
                            mem[0] = 0
                            mem[32] = 2
                s = s + 1
                continue 
            if sub_e31e5c3d[0].field_160 > arg1:
            if not sub_e31e5c3d[0].field_256:
            mem[96] = 0x5e2fb5d900000000000000000000000000000000000000000000000000000000
            mem[100] = sub_e31e5c3d[0].field_0
            mem[132] = sub_e31e5c3d[0].field_160
            if sub_e31e5c3d[0].field_256 < idx:
                call address(stor1.field_0).0x5e2fb5d9 with:
                   value sub_e31e5c3d[0].field_256 wei
                     gas gas_remaining - 34050 wei
                    args sub_e31e5c3d[0].field_0, sub_e31e5c3d[0].field_160
                require ext_call.success
                mem[0] = 0
                mem[32] = 2
                sub_e31e5c3d[0].field_256 = 0
                idx = idx - sub_e31e5c3d[0].field_256
                continue 
            call address(stor1.field_0).0x5e2fb5d9 with:
               value idx wei
                 gas gas_remaining - 34050 wei
                args sub_e31e5c3d[0].field_0, sub_e31e5c3d[0].field_160
            require ext_call.success
            mem[0] = 0
            mem[32] = 2
            sub_e31e5c3d[0].field_256 -= idx
            idx = 0
            continue 
}



}
