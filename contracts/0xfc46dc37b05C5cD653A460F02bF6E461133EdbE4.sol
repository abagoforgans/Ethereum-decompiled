contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 sub_680f05cc;

function sub_680f05cc(?) {
    require calldata.size - 4 >= 32
    return sub_680f05cc[arg1]
}

function _fallback() payable {
    revert
}

function sub_2a82e6b8(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x3da1c0c3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_63c8b86b(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x3da1c0c3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_683a8fa9(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor4)
    staticcall stor4.0x3da1c0c3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_aa52dc4a(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x7beeb945 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_f87e9d25(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x3da1c0c3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.getOwnerAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == arg1)
}

function isAgent(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x7beeb945 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x7beeb945 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isAsset(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor4)
    staticcall stor4.0x7beeb945 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isTrader(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x7beeb945 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_15260063(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor5)
    staticcall stor5.0x422c29a4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[12 len 20]:
        return stor6[ext_call.return_data[12 len 20]]
    else:
        return 0
}

function getUserRank(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor5)
    staticcall stor5.0x422c29a4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[12 len 20]:
        return stor7[ext_call.return_data[12 len 20]]
    else:
        return 0
}

function sub_e5726364(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.0x7beeb945 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Address is not a verified Admin.'
    require ext_code.size(stor1)
    staticcall stor1.0x3da1c0c3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Address is not a verified Admin.'
    if arg2 <= 0:
        revert with 0, 'Limit needs to be bigger than 0'
    sub_680f05cc[arg1] = arg2
}

function sub_46625815(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.0x7beeb945 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Address is not a verified Admin.'
    require ext_code.size(stor1)
    staticcall stor1.0x3da1c0c3 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Address is not a verified Admin.'
    require ext_code.size(stor5)
    staticcall stor5.0x422c29a4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[12 len 20]:
        stor7[ext_call.return_data[12 len 20]] = arg2
}

function sub_fee05c1d(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor4)
    staticcall stor4.0x7beeb945 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Address is not an Asset.'
    require ext_code.size(stor5)
    staticcall stor5.0x422c29a4 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[12 len 20] != arg1:
        if arg2 != ext_call.return_data[12 len 20]:
            if ext_call.return_data[12 len 20]:
                require ext_code.size(stor5)
                staticcall stor5.0x422c29a4 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(stor3)
                staticcall stor3.0x7beeb945 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20]:
                    if ext_call.return_data[0]:
                        require arg3 + stor6[address(ext_call.return_data[0])] >= stor6[address(ext_call.return_data[0])]
                        if arg3 + stor6[address(ext_call.return_data[0])] > sub_680f05cc[stor7[ext_call.return_data[12 len 20]]]:
                            return 0
                        require arg3 + stor6[address(ext_call.return_data[0])] >= stor6[address(ext_call.return_data[0])]
                        stor6[address(ext_call.return_data[0])] += arg3
                else:
                    if ext_call.return_data[0]:
                        require arg3 + stor6[address(ext_call.return_data[0])] >= stor6[address(ext_call.return_data[0])]
                        if arg3 + stor6[address(ext_call.return_data[0])] > sub_680f05cc[0]:
                            return 0
                        require arg3 + stor6[address(ext_call.return_data[0])] >= stor6[address(ext_call.return_data[0])]
                        stor6[address(ext_call.return_data[0])] += arg3
        else:
            if arg1 != ext_call.return_data[44 len 20]:
                if ext_call.return_data[12 len 20]:
                    require ext_code.size(stor5)
                    staticcall stor5.0x422c29a4 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(stor3)
                    staticcall stor3.0x7beeb945 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20]:
                        if ext_call.return_data[0]:
                            require arg3 + stor6[address(ext_call.return_data[0])] >= stor6[address(ext_call.return_data[0])]
                            if arg3 + stor6[address(ext_call.return_data[0])] > sub_680f05cc[stor7[ext_call.return_data[12 len 20]]]:
                                return 0
                            require arg3 + stor6[address(ext_call.return_data[0])] >= stor6[address(ext_call.return_data[0])]
                            stor6[address(ext_call.return_data[0])] += arg3
                    else:
                        if ext_call.return_data[0]:
                            require arg3 + stor6[address(ext_call.return_data[0])] >= stor6[address(ext_call.return_data[0])]
                            if arg3 + stor6[address(ext_call.return_data[0])] > sub_680f05cc[0]:
                                return 0
                            require arg3 + stor6[address(ext_call.return_data[0])] >= stor6[address(ext_call.return_data[0])]
                            stor6[address(ext_call.return_data[0])] += arg3
    else:
        if arg2 != ext_call.return_data[44 len 20]:
            if arg2 != ext_call.return_data[12 len 20]:
                if ext_call.return_data[12 len 20]:
                    require ext_code.size(stor5)
                    staticcall stor5.0x422c29a4 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(stor3)
                    staticcall stor3.0x7beeb945 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20]:
                        if ext_call.return_data[0]:
                            require arg3 + stor6[address(ext_call.return_data[0])] >= stor6[address(ext_call.return_data[0])]
                            if arg3 + stor6[address(ext_call.return_data[0])] > sub_680f05cc[stor7[ext_call.return_data[12 len 20]]]:
                                return 0
                            require arg3 + stor6[address(ext_call.return_data[0])] >= stor6[address(ext_call.return_data[0])]
                            stor6[address(ext_call.return_data[0])] += arg3
                    else:
                        if ext_call.return_data[0]:
                            require arg3 + stor6[address(ext_call.return_data[0])] >= stor6[address(ext_call.return_data[0])]
                            if arg3 + stor6[address(ext_call.return_data[0])] > sub_680f05cc[0]:
                                return 0
                            require arg3 + stor6[address(ext_call.return_data[0])] >= stor6[address(ext_call.return_data[0])]
                            stor6[address(ext_call.return_data[0])] += arg3
            else:
                if arg1 != ext_call.return_data[44 len 20]:
                    if ext_call.return_data[12 len 20]:
                        require ext_code.size(stor5)
                        staticcall stor5.0x422c29a4 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(stor3)
                        staticcall stor3.0x7beeb945 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20]:
                            if ext_call.return_data[0]:
                                require arg3 + stor6[address(ext_call.return_data[0])] >= stor6[address(ext_call.return_data[0])]
                                if arg3 + stor6[address(ext_call.return_data[0])] > sub_680f05cc[stor7[ext_call.return_data[12 len 20]]]:
                                    return 0
                                require arg3 + stor6[address(ext_call.return_data[0])] >= stor6[address(ext_call.return_data[0])]
                                stor6[address(ext_call.return_data[0])] += arg3
                        else:
                            if ext_call.return_data[0]:
                                require arg3 + stor6[address(ext_call.return_data[0])] >= stor6[address(ext_call.return_data[0])]
                                if arg3 + stor6[address(ext_call.return_data[0])] > sub_680f05cc[0]:
                                    return 0
                                require arg3 + stor6[address(ext_call.return_data[0])] >= stor6[address(ext_call.return_data[0])]
                                stor6[address(ext_call.return_data[0])] += arg3
    return 1
}



}
