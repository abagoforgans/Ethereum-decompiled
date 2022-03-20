contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xee462a6717f17c57c826f1ad9b4d3813495296c9
    return code.data[55 len 204]
}



// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    if msg.value != 0:
        if msg.value >= 1999 * 10^15:
            idx = 0
            s = msg.value
            while idx < msg.value / 1999 * 10^15:
                if s <= 0:
                    idx = idx + 1
                    s = s
                    continue 
                call owner with:
                   value 1999 * 10^15 wei
                     gas 0 wei
                idx = idx + 1
                s = s - 1999 * 10^15
                continue 
        else:
            call owner with:
               value msg.value wei
                 gas 0 wei
}



}
