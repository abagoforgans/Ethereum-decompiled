contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x82effbaaaf28614e55b2ba440fb198e0e5789b0f
    selfdestruct(stor0)
}



// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}



}
