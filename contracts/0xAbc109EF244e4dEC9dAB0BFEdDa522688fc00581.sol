contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 6796]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function createKingdom(string arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9) payable {
    require msg.value <= 0
    require arg3 != 0
    require arg4 != 0
    require arg3 != arg2
    require arg4 != arg2
    require arg5 >= 10^15
    require arg5 <= 100 * 10^18
    require arg6 >= 10^15
    require arg6 <= 100000 * 10^18
    require 20 * arg5 <= arg6
    require arg7 >= 1
    require arg7 <= 900
    require arg8 >= 900
    require arg8 <= 240000 * 24 * 3600
    require arg9 >= 10
    require arg9 <= 100
    mem[ceil32(arg1.length) + 6448 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        create contract with 0 wei
                        code: code.data[796 len 6000], Array(len=arg9, data=arg1.length, arg1[all]), address(arg2), address(arg3), address(arg4), arg5, arg6, arg7, arg8
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 6448] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 6480 len arg1.length % 32]
        create contract with 0 wei
                        code: code.data[796 len 6000], Array(len=arg9, data=arg1.length, arg1[all], mem[ceil32(arg1.length) + arg1.length + 6448 len -(arg1.length % 32) + 32]), address(arg2), address(arg3), address(arg4), arg5, arg6, arg7, arg8
    return address(create.new_address)
}

function validateProposedThroneRules(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    if arg1 >= 10^15:
        if arg1 <= 100 * 10^18:
            if arg2 >= 10^15:
                if arg2 <= 100000 * 10^18:
                    if 20 * arg1 <= arg2:
                        if arg3 >= 1:
                            if arg3 <= 900:
                                if arg4 >= 900:
                                    if arg4 <= 240000 * 24 * 3600:
                                        if arg5 >= 10:
                                            if arg5 <= 100:
                                                return 1
                                            else:
                                                return 0
                                        else:
                                            return 0
                                    else:
                                        return 0
                                else:
                                    return 0
                            else:
                                return 0
                        else:
                            return 0
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}



}
