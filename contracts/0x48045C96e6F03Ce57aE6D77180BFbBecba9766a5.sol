contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 768]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f579883d(?) {
    if arg3 != 1:
        return arg1
    return arg2
}

function sub_37854e3a(?) {
    if arg1 >= arg2:
        return arg2
    return arg1
}

function sub_a0dd356c(?) {
    if arg2 <= arg1:
        return arg2
    return arg1
}

function sub_22a5c985(?) {
    require arg2
    return ((arg1 * 10^(arg3 + 1) / arg2) + 5 / 10)
}

function sub_304128e6(?) {
    if arg4:
        return (10^6 * (arg2 * 10^(arg3 + 1) / 10^18) + 5 / 10 * (arg1 * 10^(arg3 + 1) / 10^18) + 5 / 10)
    return (arg1 * arg2)
}

function sub_f4fd1764(?) {
    if arg3 <= arg2:
        if arg4:
            return (10^6 * (10 * 10^6 * arg3 / 10^18) + 5 / 10 * (10 * 10^6 * arg1 / 10^18) + 5 / 10)
        return (arg1 * arg3)
    if arg4:
        return (10^6 * (10 * 10^6 * arg2 / 10^18) + 5 / 10 * (10 * 10^6 * arg1 / 10^18) + 5 / 10)
    return (arg1 * arg2)
}



}
