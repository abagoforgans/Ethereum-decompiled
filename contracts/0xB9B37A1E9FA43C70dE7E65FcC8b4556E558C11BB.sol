contract main {




// =====================  Runtime code  =====================


const getnum = eth.balance(this.address)


address stor0;
uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
  stop
}

function isContract(address arg1) {
    require calldata.size - 4 >= 32
    return (ext_code.size(arg1) > 0)
}

function sub_e4826197(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0xa3bf06f1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    require arg1 >= 0
    stor2 = arg1
}

function changeTimeLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0xa3bf06f1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    require arg1 >= 0
    if not arg1:
        stor3 = 0
    else:
        require 24 * 3600 * arg1 / arg1 == 24 * 3600
        stor3 = 24 * 3600 * arg1
}

function changeMapping(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0xa3bf06f1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    stor1 = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x8fe77e86 with:
            gas gas_remaining wei
           args Array(len=4, data='nest')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
}

function allValue() payable {
    mem[64] = 96
    require not msg.value
    require ext_code.size(address(stor0))
    staticcall address(stor0).balancesStart() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xd1505c5d00000000000000000000000000000000000000000000000000000000
    mem[100] = var24001
    require ext_code.size(address(stor0))
    staticcall address(stor0).mem[var26003 len 4] with:
            gas gas_remaining wei
           args mem[var26003 + 4 len var26004 - 4]
    mem[var26005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not mem[var30002]:
        return var30004
    mem[96] = '~WG'
    mem[100] = var32001
    require ext_code.size(address(stor0))
    staticcall address(stor0).mem[var34003 len 4] with:
            gas gas_remaining wei
           args mem[var34003 + 4 len var34004 - 4]
    mem[var34005 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[96] = 0xcf2adac800000000000000000000000000000000000000000000000000000000
    if mem[var38002 + 32] > stor2:
        if not var43001:
            mem[100] = var44003
            require ext_code.size(address(stor0))
            staticcall address(stor0).mem[var46003 len 4] with:
                    gas gas_remaining wei
                   args mem[var46003 + 4 len var46004 - 4]
            mem[var46005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 0xd1505c5d00000000000000000000000000000000000000000000000000000000
            mem[100] = var52001
            require ext_code.size(address(stor0))
            staticcall address(stor0).mem[var54003 len 4] with:
                    gas gas_remaining wei
                   args mem[var54003 + 4 len var54004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            # nil
        else:
            mem[100] = var45003
            require ext_code.size(address(stor0))
            staticcall address(stor0).mem[var47003 len 4] with:
                    gas gas_remaining wei
                   args mem[var47003 + 4 len var47004 - 4]
            mem[var47005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 0xd1505c5d00000000000000000000000000000000000000000000000000000000
            mem[100] = var53001
            require ext_code.size(address(stor0))
            staticcall address(stor0).mem[var55003 len 4] with:
                    gas gas_remaining wei
                   args mem[var55003 + 4 len var55004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            # nil
    else:
        if var39001:
            mem[100] = var43003
            require ext_code.size(address(stor0))
            staticcall address(stor0).mem[var45003 len 4] with:
                    gas gas_remaining wei
                   args mem[var45003 + 4 len var45004 - 4]
            mem[var45005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 0xd1505c5d00000000000000000000000000000000000000000000000000000000
            mem[100] = var51001
            require ext_code.size(address(stor0))
            staticcall address(stor0).mem[var53003 len 4] with:
                    gas gas_remaining wei
                   args mem[var53003 + 4 len var53004 - 4]
            mem[var53005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not mem[var57002]:
                return (var42001 + var42004)
            require ext_code.size(address(stor0))
            # nil
        else:
            mem[100] = var42003
            require ext_code.size(address(stor0))
            staticcall address(stor0).mem[var44003 len 4] with:
                    gas gas_remaining wei
                   args mem[var44003 + 4 len var44004 - 4]
            mem[var44005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 0xd1505c5d00000000000000000000000000000000000000000000000000000000
            mem[100] = var50001
            require ext_code.size(address(stor0))
            staticcall address(stor0).mem[var52003 len 4] with:
                    gas gas_remaining wei
                   args mem[var52003 + 4 len var52004 - 4]
            mem[var52005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not mem[var56002]:
                return var56004
            mem[96] = '~WG'
            mem[100] = var58001
            require ext_code.size(address(stor0))
            staticcall address(stor0).mem[var60003 len 4] with:
                    gas gas_remaining wei
                   args mem[var60003 + 4 len var60004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
}

function doit() payable {
    mem[64] = 96
    require not msg.value
    require ext_code.size(stor1)
    staticcall stor1.0xa3bf06f1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    require eth.balance(this.address) == (10 * eth.balance(this.address) / 10) + (eth.balance(this.address) % 10)
    call msg.sender with:
       value eth.balance(this.address) / 10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor0))
    staticcall address(stor0).balancesStart() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xd1505c5d00000000000000000000000000000000000000000000000000000000
    mem[100] = var42001
    require ext_code.size(address(stor0))
    staticcall address(stor0).mem[var44003 len 4] with:
            gas gas_remaining wei
           args mem[var44003 + 4 len var44004 - 4]
    mem[var44005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if mem[var48002]:
        mem[96] = '~WG'
        mem[100] = var50001
        require ext_code.size(address(stor0))
        staticcall address(stor0).mem[var52003 len 4] with:
                gas gas_remaining wei
               args mem[var52003 + 4 len var52004 - 4]
        mem[var52005 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[96] = 0xcf2adac800000000000000000000000000000000000000000000000000000000
        if mem[var56002 + 32] > stor2:
            if not var61001:
                mem[100] = var62003
                require ext_code.size(address(stor0))
                staticcall address(stor0).mem[var64003 len 4] with:
                        gas gas_remaining wei
                       args mem[var64003 + 4 len var64004 - 4]
                mem[var64005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0xd1505c5d00000000000000000000000000000000000000000000000000000000
                mem[100] = var70001
                require ext_code.size(address(stor0))
                staticcall address(stor0).mem[var72003 len 4] with:
                        gas gas_remaining wei
                       args mem[var72003 + 4 len var72004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                # nil
            else:
                mem[100] = var63003
                require ext_code.size(address(stor0))
                staticcall address(stor0).mem[var65003 len 4] with:
                        gas gas_remaining wei
                       args mem[var65003 + 4 len var65004 - 4]
                mem[var65005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0xd1505c5d00000000000000000000000000000000000000000000000000000000
                mem[100] = var71001
                require ext_code.size(address(stor0))
                staticcall address(stor0).mem[var73003 len 4] with:
                        gas gas_remaining wei
                       args mem[var73003 + 4 len var73004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                # nil
        else:
            if var57001:
                mem[100] = var61003
                require ext_code.size(address(stor0))
                staticcall address(stor0).mem[var63003 len 4] with:
                        gas gas_remaining wei
                       args mem[var63003 + 4 len var63004 - 4]
                mem[var63005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0xd1505c5d00000000000000000000000000000000000000000000000000000000
                mem[100] = var69001
                require ext_code.size(address(stor0))
                staticcall address(stor0).mem[var71003 len 4] with:
                        gas gas_remaining wei
                       args mem[var71003 + 4 len var71004 - 4]
                mem[var71005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor0))
                if mem[var75002]:
                    # nil
                else:
                    staticcall address(stor0).balancesStart() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor0))
                    # nil
            else:
                mem[100] = var60003
                require ext_code.size(address(stor0))
                staticcall address(stor0).mem[var62003 len 4] with:
                        gas gas_remaining wei
                       args mem[var62003 + 4 len var62004 - 4]
                mem[var62005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0xd1505c5d00000000000000000000000000000000000000000000000000000000
                mem[100] = var68001
                require ext_code.size(address(stor0))
                staticcall address(stor0).mem[var70003 len 4] with:
                        gas gas_remaining wei
                       args mem[var70003 + 4 len var70004 - 4]
                mem[var70005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[var74002]:
                    mem[96] = '~WG'
                    mem[100] = var76001
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).mem[var78003 len 4] with:
                            gas gas_remaining wei
                           args mem[var78003 + 4 len var78004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
                else:
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).balancesStart() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 0xd1505c5d00000000000000000000000000000000000000000000000000000000
                    mem[100] = var96001
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).mem[var98003 len 4] with:
                            gas gas_remaining wei
                           args mem[var98003 + 4 len var98004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
    else:
        require ext_code.size(address(stor0))
        staticcall address(stor0).balancesStart() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0xd1505c5d00000000000000000000000000000000000000000000000000000000
        mem[100] = var70001
        require ext_code.size(address(stor0))
        staticcall address(stor0).mem[var72003 len 4] with:
                gas gas_remaining wei
               args mem[var72003 + 4 len var72004 - 4]
        mem[var72005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not mem[var76002]:
            stor4 = block.timestamp + stor3
        mem[96] = '~WG'
        mem[100] = var78001
        require ext_code.size(address(stor0))
        staticcall address(stor0).mem[var80003 len 4] with:
                gas gas_remaining wei
               args mem[var80003 + 4 len var80004 - 4]
        mem[var80005 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if mem[var84002 + 32] <= stor2:
            if var70001:
                if not var90002:
                    require var48004 > 0
                    require var48004
                    require var97001 == (var48004 * var97001 / var48004) + (var97001 % var48004)
                    require var48004
                    call address(var97006) with:
                       value var97001 / var48004 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(stor0))
                    # nil
                else:
                    require var93003
                    require var95001 / var95002 == eth.balance(this.address)
                    require var48004 > 0
                    require var48004
                    require var98001 == (var48004 * var98001 / var48004) + (var98001 % var48004)
                    require var48004
                    call address(var98006) with:
                       value var98001 / var48004 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
            else:
                mem[96] = 0xcf2adac800000000000000000000000000000000000000000000000000000000
                mem[100] = var88003
                require ext_code.size(address(stor0))
                staticcall address(stor0).mem[var90003 len 4] with:
                        gas gas_remaining wei
                       args mem[var90003 + 4 len var90004 - 4]
                mem[var90005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0xd1505c5d00000000000000000000000000000000000000000000000000000000
                mem[100] = var96001
                require ext_code.size(address(stor0))
                staticcall address(stor0).mem[var98003 len 4] with:
                        gas gas_remaining wei
                       args mem[var98003 + 4 len var98004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
        else:
            if not var89001:
                mem[96] = 0xcf2adac800000000000000000000000000000000000000000000000000000000
                mem[100] = var75003
                require ext_code.size(address(stor0))
                staticcall address(stor0).mem[var77003 len 4] with:
                        gas gas_remaining wei
                       args mem[var77003 + 4 len var77004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                # nil
            else:
                if not var89002:
                    require var48004 > 0
                    require var48004
                    require 0 == (var48004 * 0 / var48004) + (0 % var48004)
                    require var48004
                    call address(var89003) with:
                       value 0 / var48004 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96] = 0xcf2adac800000000000000000000000000000000000000000000000000000000
                    mem[100] = var91003
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).mem[var93003 len 4] with:
                            gas gas_remaining wei
                           args mem[var93003 + 4 len var93004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    # nil
                else:
                    require eth.balance(this.address) * var89002 / var89002 == eth.balance(this.address)
                    require var48004 > 0
                    require var48004
                    require eth.balance(this.address) * var89002 == (var48004 * eth.balance(this.address) * var89002 / var48004) + (eth.balance(this.address) * var89002 % var48004)
                    require var48004
                    call address(var89003) with:
                       value eth.balance(this.address) * var89002 / var48004 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96] = 0xcf2adac800000000000000000000000000000000000000000000000000000000
                    mem[100] = var92003
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).mem[var94003 len 4] with:
                            gas gas_remaining wei
                           args mem[var94003 + 4 len var94004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    # nil
}



}
