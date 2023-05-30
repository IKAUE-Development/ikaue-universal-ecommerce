___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "IKAUE Universal Ecommerce",
  "description": "Plantilla de IKAUE que sirve para poder medir de manera universal tanto los eventos de GA3 como los de GA4.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "neededFields",
    "displayName": "Data sources",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "dlEcommerce",
        "displayName": "DataLayer source",
        "simpleValueType": true,
        "help": "Introducir referencia a la variable del dataLayer que contiene el objeto ecommerce original."
      },
      {
        "type": "TEXT",
        "name": "eventId",
        "displayName": "Event ID variable",
        "simpleValueType": true,
        "help": "Introducir referencia a variable del DL que recoge el valor de \"gtm.uniqueEventId\"."
      },
      {
        "type": "TEXT",
        "name": "eventName",
        "displayName": "Event name",
        "simpleValueType": true,
        "help": "Introducir referencia a la variable que contiene el nombre del evento actual."
      }
    ],
    "help": "La plantilla necesita que estos campos se rellenen con las variables correctas para funcionar. Estas variables funcionan como fuentes de datos para la plantilla."
  },
  {
    "type": "GROUP",
    "name": "baseGA3Mapping",
    "displayName": "GA3 events implementation mapping",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "PARAM_TABLE",
        "name": "eecGA3eventNames",
        "displayName": "Standard to Custom event names",
        "paramTableColumns": [
          {
            "param": {
              "type": "TEXT",
              "name": "ga3eventsStandardNames",
              "displayName": "Events",
              "simpleValueType": true
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "TEXT",
              "name": "customEventNames",
              "displayName": "Custom Event Names",
              "simpleValueType": true
            },
            "isUnique": false
          }
        ],
        "help": "Mapeo que relaciona los nombres predeterminados de los eventos de ecommerce con los nombres empleados en la implementación particular del cliente."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "ga3toGa4Mapping",
    "displayName": "GA3 to GA4 Config",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "PARAM_TABLE",
        "name": "ga3toGa4events",
        "displayName": "GA3 to GA4 event mapping",
        "paramTableColumns": [
          {
            "param": {
              "type": "TEXT",
              "name": "ga3eventName",
              "displayName": "GA3 Event Name",
              "simpleValueType": true
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "TEXT",
              "name": "ga4eventName",
              "displayName": "GA4 Event Name",
              "simpleValueType": true
            },
            "isUnique": false
          }
        ],
        "help": "Mapeo que relaciona los nombres de evento en GA3 con los nombres de evento deseados en GA4 de ese mismo evento."
      },
      {
        "type": "PARAM_TABLE",
        "name": "ga3toGa4itemParams",
        "displayName": "GA3 to GA4 item parameter mapping",
        "paramTableColumns": [
          {
            "param": {
              "type": "TEXT",
              "name": "ga3itemParamName",
              "displayName": "GA3 item parameter name",
              "simpleValueType": true
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "TEXT",
              "name": "ga4itemParamName",
              "displayName": "GA4 item parameter name",
              "simpleValueType": true
            },
            "isUnique": false
          }
        ],
        "help": "Mapeo que relaciona los nombres de parámetro a nivel de producto en GA3 con los de GA4."
      },
      {
        "type": "PARAM_TABLE",
        "name": "ga3toGa4params",
        "displayName": "GA3 to GA4 parameter mapping",
        "paramTableColumns": [
          {
            "param": {
              "type": "TEXT",
              "name": "ga3paramName",
              "displayName": "GA3 parameter name",
              "simpleValueType": true
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "TEXT",
              "name": "ga4paramName",
              "displayName": "GA4 parameter name",
              "simpleValueType": true
            },
            "isUnique": false
          }
        ],
        "help": "Mapeo que relaciona los nombres de parámetro a nivel de evento en GA3 con los de GA4."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "reformatGA3",
    "displayName": "GA3 Reformat Config",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "PARAM_TABLE",
        "name": "ga3reformatActions",
        "displayName": "",
        "paramTableColumns": [
          {
            "param": {
              "type": "TEXT",
              "name": "eecActions",
              "displayName": "EEC Actions",
              "simpleValueType": true
            },
            "isUnique": false
          }
        ],
        "help": "Acciones a tener en cuenta para ser incluidas en el reformateo de GA3."
      },
      {
        "type": "PARAM_TABLE",
        "name": "ga3reformatDimensions",
        "displayName": "Dimensions to reformat in GA3",
        "paramTableColumns": [
          {
            "param": {
              "type": "TEXT",
              "name": "dlDimensionName",
              "displayName": "DataLayer dimension name",
              "simpleValueType": true
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "TEXT",
              "name": "ga3dimensionName",
              "displayName": "GA3 dimension name",
              "simpleValueType": true
            },
            "isUnique": false
          }
        ],
        "help": "Mapeo que relaciona los nombres originales de las dimensiones en el dataLayer con su nombre deseado en formato GA3."
      },
      {
        "type": "PARAM_TABLE",
        "name": "ga3reformatMetrics",
        "displayName": "Metrics to reformat in GA3",
        "paramTableColumns": [
          {
            "param": {
              "type": "TEXT",
              "name": "dlMetricName",
              "displayName": "GA3 metric name",
              "simpleValueType": true
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "TEXT",
              "name": "ga3metricName",
              "displayName": "GA3 metric name",
              "simpleValueType": true
            },
            "isUnique": false
          }
        ],
        "help": "Mapeo que relaciona los nombres originales de las métricas en el dataLayer con su nombre deseado en formato GA3."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "reformatGA4",
    "displayName": "GA4 Reformat Config",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "PARAM_TABLE",
        "name": "parametersNameMapping",
        "displayName": "Switch name to parameters",
        "paramTableColumns": [
          {
            "param": {
              "type": "TEXT",
              "name": "oldParamName",
              "displayName": "DataLayer parameter name",
              "simpleValueType": true
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "TEXT",
              "name": "newParamName",
              "displayName": "GA4 dimension name",
              "simpleValueType": true
            },
            "isUnique": false
          }
        ],
        "help": "Mapea el valor original del dataLayer con el que vienen los eventos de GA4 en el dataLayer y el nombre de parámetro deseado tras el reformateo en GA4."
      },
      {
        "type": "PARAM_TABLE",
        "name": "parametersValueMapping",
        "displayName": "Switch parameter values",
        "paramTableColumns": [
          {
            "param": {
              "type": "TEXT",
              "name": "paramName",
              "displayName": "Parameter to change",
              "simpleValueType": true
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "TEXT",
              "name": "newParamValue",
              "displayName": "Parameter new value",
              "simpleValueType": true
            },
            "isUnique": false
          }
        ],
        "help": "Mapeo de los nombres de nuevos parámetros a implementar, junto al valor que deben tener."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "splitImpressionsConfig",
    "displayName": "Split Impressions Config",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "applySplitImpressions",
        "checkboxText": "Use split impressions",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "limitPerSplit",
        "displayName": "Items per push",
        "simpleValueType": true,
        "help": "Número máximo de productos por hit de splitImpressions.",
        "enablingConditions": [
          {
            "paramName": "applySplitImpressions",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "impressionsEventName",
        "displayName": "Impressions event name",
        "simpleValueType": true,
        "help": "Introducir el nombre exacto del evento de impresiones del que se va a hacer el splitImpressions.",
        "enablingConditions": [
          {
            "paramName": "applySplitImpressions",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "productsArrayName",
        "displayName": "Products array name",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "applySplitImpressions",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "limitProducts",
    "displayName": "Limit products",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "maxProductsInTransaction",
        "displayName": "Limit of products per transaction",
        "simpleValueType": true,
        "help": "Número máximo de productos que se enviarán en el hit de transacción. \nEl resto se enviarán dentro de un parámetro \u0027others\u0027.",
        "defaultValue": 100
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// --------------------------------- IMPORT TEMPLATE MODULES ---------------------------------
const getType = require('getType');
const JSON  = require('JSON');
const Math = require('Math');
const makeTableMap = require('makeTableMap');
const Object = require('Object');
const templateStorage = require('templateStorage');
const logToConsole = require('logToConsole');
const createQueue = require('createQueue');

const dataLayerPush = createQueue('dataLayer');


// ----------------------------------- SETUP VARIABLES -------------------------------------
// CORE VARIABLES.
const dlEcommerce = data.dlEcommerce;     // --> ORIGINAL ECOMMERCE OBJECT FROM DL.
const eventName = data.eventName;         // --> NAME OF THE CURRENT EVENT. 
const eventId = data.eventId;             // --> ID OF THE CURRENT EVENT.


// Make a copy of ecommerce object.
let ecommerce = dlEcommerce;
ecommerce = getType(ecommerce) == 'object' ? JSON.parse(JSON.stringify(ecommerce)) : {};

const eecGA3eventNames = data.eecGA3eventNames ? makeTableMap(data.eecGA3eventNames,
                                                              'ga3eventsStandardNames',
                                                              'customEventNames') : {};

// GA3 to GA4 variables.
let ga3toGa4Mapping = {};
ga3toGa4Mapping.events = data.ga3toGa4events ? 
                           makeTableMap(data.ga3toGa4events, 'ga3eventName', 'ga4eventName') : 
                           {};

ga3toGa4Mapping.params = data.ga3toGa4params ? makeTableMap(data.ga3toGa4params, 
                                                            'ga3paramName', 
                                                            'ga4paramName') : {};

ga3toGa4Mapping.itemParams = data.ga3toGa4itemParams ? makeTableMap(data.ga3toGa4itemParams, 
                                                                    'ga3itemParamName', 
                                                                    'ga4itemParamName') : {};

// GA3 reformat variables.
let reformatGA3 = {};
let ga3reformatActionsArray = data.ga3reformatActions || [];
reformatGA3.actions = [];
ga3reformatActionsArray.forEach(currentAction => {
  reformatGA3.actions.push(currentAction.eecActions);
});

reformatGA3.dimensions = data.ga3reformatDimensions ? 
                         makeTableMap(data.ga3reformatDimensions, 'dlDimensionName', 'ga3dimensionName') : 
                         {};

reformatGA3.metrics = data.ga3reformatMetrics ? makeTableMap(data.ga3reformatMetrics, 
                                                             'dlMetricName', 
                                                             'ga3metricName') : {};

// GA4 reformat variables.
let reformatGA4 = {};
reformatGA4.parametersNameMapping = data.parametersNameMapping ? 
  makeTableMap(data.parametersNameMapping, 
               'oldParamName', 
               'newParamName') : {};

reformatGA4.parametersValueMapping = data.parametersValueMapping ? 
  makeTableMap(data.parametersValueMapping, 
               'paramName', 
               'newParamValue') : {};



// Arrange the created variables into the stepsVariables object.
var stepsVariables = {
  // Maximum number of products the push will have, used in the limit products module.
  maxProducts: data.maxProductsInTransaction,

  // Config options for splitImpressions module.
  splitImpressionsConfig : {
    limitPerSplit: data.limitPerSplit,
    impressionsEventName: data.impressionsEventName,
    productsArrayName: data.productsArrayName
  },
  
  eecGA3eventNames : eecGA3eventNames,   // <-- GA3 EEC Event names used on the page. 
  ga3toGa4Mapping : ga3toGa4Mapping,     // <-- Mapping of parameters from GA3 to GA4 format.
  reformatGA3: reformatGA3,              // <-- Mapping of parameters from DL to desired GA3 format.
  reformatGA4: reformatGA4               // <-- Mapping of parameters from DL to desired GA4 format.
                                         //     Also includes mapping for new parameters to add.   
};


// ----------------------------------- END SETUP VARIABLES -------------------------------------

// ----------------------------------- SETUP FUNCTIONS -----------------------------------------

// Object holding all the modules or 'steps' to apply on the ecommerce object.
var steps = {
    
  // ¿Cleans ecommerce nodes?
  eventNameReplacer : function(e){
    var ecommerceValidNodes = {
      'ecommerce-checkout-step' : [ 'checkout', 'products' ],
      'ecommerce-impressions' : [ 'impressions' ],
      'gtm.splitImpressions' : [ 'splitImpressions' ],
      'ecommerce-add-to-cart' : ['add']
    };
      
    if (ecommerceValidNodes[ eventName ]){
      let newEcommerceObject = {};
      for ( let i =0; i<ecommerceValidNodes[ eventName ].length; i++){ 
        newEcommerceObject[ecommerceValidNodes[eventName][i]] = 
        e[ecommerceValidNodes[eventName][i]];
      }
      e = newEcommerceObject;
    }
    return e;
  },

  // If products is outside its related action, move it where it belongs.
  moveProducts : function(e, actions){
    var action = actions && getType(actions)=='array' && actions.length >= 1 ? actions[0] : actions;
    if (e && e.products) {
      if (!e[action].products) {
        e[action].products = JSON.parse(JSON.stringify(e.products));
        Object.delete(e, 'products');
      }
    }
    return e;
  },

  // Get all ecommerce actions.
  filterEcActions : function(e){
    var actionsToReformat = stepsVariables.reformatGA3.actions;
    var a = [];
    for (let i in e) { 
      if (actionsToReformat.indexOf(i) >= 0) 
        a.push(i); 
    }
    return a;
  },

  // Reformat the dimensions, in impressions and also in the other events.
  reformatDimensions : function(e, actions){
    var dimensionsToReformat = stepsVariables.reformatGA3.dimensions;
    for(var x=0; x<actions.length; x++){
      var action = actions[x];
      var productsArray = action == 'impressions' ? JSON.parse(JSON.stringify(e[action])) : 
                                                    JSON.parse(JSON.stringify(e[action].products));

      for (let i=0; i < productsArray.length; i++) {
        var currentProduct = productsArray[i];
        if (currentProduct.productDimensions) {
          for (let ii in dimensionsToReformat) {
            if (currentProduct.productDimensions[ii] && 
                currentProduct.productDimensions[ii] != 'ns' && 
                currentProduct.productDimensions[ii] != '(not set)') {
              productsArray[i][dimensionsToReformat[ii]] = currentProduct.productDimensions[ii];
            } else {
              if (!currentProduct[dimensionsToReformat[ii]]) {
                productsArray[i][dimensionsToReformat[ii]] = 'ns';
              }
            }
          }
          Object.delete(productsArray[i], 'productDimensions');
        }
      }
      if(action == 'impressions')
        e[action] = productsArray;
      else
        e[action].products = productsArray;
    }
    return e;
  },
      
  // Reformat the metrics, in impressions and also in the other events.
  reformatMetrics : function(e, actions){
    var metricsToReformat = stepsVariables.reformatGA3.metrics;
    for(var x=0; x<actions.length; x++){
      var action = actions[x];
      var productsArray = action == 'impressions' ? JSON.parse(JSON.stringify(e[action])) : 
                                                    JSON.parse(JSON.stringify(e[action].products));
      for (let i=0; i < productsArray.length; i++) {
        var currentProduct = productsArray[i];
        if (currentProduct.productMetrics) {
          for (let ii in metricsToReformat) {
            if (currentProduct.productMetrics[ii] && 
                currentProduct.productMetrics[ii] != 'ns' && 
                currentProduct.productMetrics[ii] !='(not set)') {
                  productsArray[i][metricsToReformat[ii]] = currentProduct.productMetrics[ii];
            } else {
              if (!currentProduct[metricsToReformat[ii]]) {
                productsArray[i][metricsToReformat[ii]] = 'ns';
              }
            }
          }
          Object.delete(productsArray[i], 'productMetrics');
        }
      }
      if(action == 'impressions')
        e[action] = productsArray;
      else
        e[action].products = productsArray;
    }     
    return e;
  },

  // Limit max of products in a ecommerce hit.
  limitProducts : function(e, actions){
    for(var x=0; x<actions.length; x++){
      var action = actions[x];
      if (e && e[action] && e[action].products && e[action].products[0] ){ 
        //1. Setup max products and product object
        var maxProducts = stepsVariables.maxProducts;
        var baseProductObject = {
          'id' : '(other)'  
        };
      
        //2. Clean products and add product:others
        if ( e[action].products.length > maxProducts ){
          var q = 0;
          var t = 0;
          for (var i=e[action].products.length; i > maxProducts; i--){
            var p = e[action].products.pop();
            if (p.quantity) q += p.quantity;
            if ( p.price && p.quantity ) t += p.price * p.quantity; 
          }
          baseProductObject.quantity = q;
          baseProductObject.price = t/q;
          e[action].products.push( baseProductObject );
        }
      }   
    }
    return e;
  },

  // Check if current event is a GA3 EEC event or not.
  isEventGA3EEC: function(evName) {
    var ga3ecommerceEventNames = [];
    for(let eventDefinition in stepsVariables.eecGA3eventNames){
      if(stepsVariables.eecGA3eventNames[eventDefinition])
        ga3ecommerceEventNames.push(stepsVariables.eecGA3eventNames[eventDefinition]);
    }

    if(evName){
      for(var x=0; x<ga3ecommerceEventNames.length; x++){
        if(evName == ga3ecommerceEventNames[x]){
          return true;
        }   
      }
    }

    return false;
  },
  
  // Push the GA3 EEC event but in GA4 format.
  pushInGA4format: function(eecEvent){ 
    const eventIdFound = templateStorage.getItem(eventId);
    if(!eventIdFound || eventIdFound !== true){ // If the event ID is not found on the template storage...
      // Change push to GA4 format.
      var ga4Push = steps.ga3toGa4conversor(eecEvent);   

      // Clean ecommerce.
      dataLayerPush({ecommerce: null});

      // Push GA4.
      dataLayerPush(ga4Push);
      
      // Store event ID, to avoid pushing the same GA4 event more than once in the same GA3 event.
      templateStorage.setItem(eventId, true);
    }
  },
  
  // Change the name of the parameter on each item, 
  // defined by parametersNameMapping on the variables object.
  parameterNameChange: function(items){ 
    var parametersNameMapping = stepsVariables.reformatGA4.parametersNameMapping;
    for(var propertyName in parametersNameMapping){
      for(var x=0; x<items.length; x++){
        if(getType(items[x]) === 'object' && items[x].hasOwnProperty(propertyName)){
          // Add new parameter to item.
          // Check if JSON copy is needed.
          var parameterValue = items[x][propertyName];
          items[x][parametersNameMapping[propertyName]] = parameterValue;
  
          // Delete old parameter.
          Object.delete(items[x], propertyName);
        } 
      }  
    }
    return items;
  },
  
  // Change the value of the parameter on each item, 
  // defined by parametersValueMapping on the variables object.
  parameterValueChange: function(items){
    var parametersValueMapping = stepsVariables.reformatGA4.parametersValueMapping;
    for(var itemParam in parametersValueMapping){
      if(getType(parametersValueMapping[itemParam]) == 'array'){
        // Apply the array change.
        var newValues = parametersValueMapping[itemParam];
        for(var i=0; i<newValues.length; i++){
          if(newValues[i] && newValues[i].item_id && newValues[i].newValue){
            for(var x=0; x<items.length; x++){
              if(items[x].item_id == newValues[i].item_id)
                items[x][itemParam] = newValues[i].newValue;
            }     
          }
        }
      } else { // Just assign the value if is not an array.
        for(let x=0; x<items.length; x++){
          items[x][itemParam] = parametersValueMapping[itemParam];   
        }     
      }   
    }
    return items;
  },

  // Given a GA3 EEC push, transform it into GA4 format.
  ga3toGa4conversor : function(ga3Push){
    let ga4newPush = {};
    // 1. Event name.
    var eventsMapping = stepsVariables.ga3toGa4Mapping.events;

    if(eventsMapping.hasOwnProperty(eventName))
      ga4newPush.event = eventsMapping[eventName];
    else
      ga4newPush.event = "unknown_GA3_event";
      
    // 2. Ecommerce.
    // 2.1. Ecommerce parameters at items level.
    ga4newPush.ecommerce = {items: []};
    var eec = ga3Push; 
      
    const paramsMapping = stepsVariables.ga3toGa4Mapping.params;
    const ecommerceParamsToKeep = [];
    for(let currentParam in paramsMapping){
      ecommerceParamsToKeep.push(currentParam);
    }
    for(let parameter in ga3Push){
      if(ga3Push[parameter].actionField){
        for(let afParam in ga3Push[parameter].actionField){
          if(ecommerceParamsToKeep.indexOf(afParam) >= 0){
            ga4newPush.ecommerce[afParam] = ga3Push[parameter].actionField[afParam];
          }
        }
      } else {
        if(ecommerceParamsToKeep.indexOf(parameter) >= 0){
            ga4newPush.ecommerce[parameter] = ga3Push[parameter];
        }
      }   
    }
      
    // Update ecommerce parameter names with GA4 format.  
    for(let ga4Param in ga4newPush.ecommerce){
      if(paramsMapping[ga4Param]){
        ga4newPush.ecommerce[paramsMapping[ga4Param]] = ga4newPush.ecommerce[ga4Param];
        if(ga4Param !== paramsMapping[ga4Param])
          Object.delete(ga4newPush.ecommerce, ga4Param);   
      }
    }


    // 2.2. Item parameters.
    const itemParamsMapping = stepsVariables.ga3toGa4Mapping.itemParams;
      
    // Get products array in all events.
    let itemsInPush;
      
    // Click event.
    if (eec.hasOwnProperty('click') && getType(eec.click.products)=='array') {
      itemsInPush = eec.click.products;
    }
      
    // Detail event.
    if (eec.hasOwnProperty('detail') && getType(eec.detail.products)=='array') {
      itemsInPush = eec.detail.products;
    }
      
    // Add event.
    if (eec.hasOwnProperty('add') && getType(eec.add.products)=='array') {
      itemsInPush = eec.add.products;
    }
      
    // Remove event.
    if (eec.hasOwnProperty('remove') && getType(eec.remove.products)=='array') {
      itemsInPush = eec.remove.products;
    }
     
    // Checkout event.
    if (eec.hasOwnProperty('checkout') && getType(eec.checkout.products)=='array') {
      itemsInPush = eec.checkout.products;
    }
      
    // Purchase event.
    if (eec.hasOwnProperty('purchase') && getType(eec.purchase.products)=='array') {
      itemsInPush = eec.purchase.products;
    }
      
    // Refund event.
    if (eec.hasOwnProperty('refund') && getType(eec.refund.products)=='array') {
      itemsInPush = eec.refund.products;
    }
      
    // Impressions event.
    if (eec.hasOwnProperty('impressions') && getType(eec.impressions)=='array') {
      itemsInPush = eec.impressions;
    }
      
    // PromoView event.
    if (eec.hasOwnProperty('promoView') && getType(eec.promoView.promotions)=='array') {
      itemsInPush = eec.promoView.promotions;
    }
      
    // PromoClick event.
    if (eec.hasOwnProperty('promoClick') && getType(eec.promoClick.promotions)=='array') {
      itemsInPush = eec.promoClick.promotions;
    }
      
      
    if(itemsInPush && getType(itemsInPush) == 'array' && itemsInPush.length > 0){
      itemsInPush.forEach(currentItem => {
        // Search param at item level.
        // Since dimensions and metrics get extracted from productDimensions and productMetrics in the GA3 reformatting,
        // these will also get remapped here along with the other product parameters.
        for(let itemParameter in currentItem){
          if(itemParamsMapping[itemParameter]){          
            currentItem[itemParamsMapping[itemParameter]]  = currentItem[itemParameter];
            if(itemParameter !== itemParamsMapping[itemParameter]){
              Object.delete(currentItem, itemParameter);
            }
          }
        }
          
        // Add categories.
        if(currentItem && currentItem.category){
          var category = currentItem.category ? currentItem.category.split('/') : [];
          category.forEach(function(c, i) {
            if (i === 0) currentItem.item_category = c;
            else currentItem['item_category' + (i + 1)] = c;
          });
          Object.delete(currentItem, 'category');
        }
             
        // Item has been reformatted, add it to the items array.
        ga4newPush.ecommerce.items.push(currentItem);
      });
    }
    return ga4newPush;
  },

  // Given an impressions / view_item_list event, build and push different splitImpressions events to
  // be able to send all the products in different hits.
  splitImpressions : function(e) {
    var splitImpressionsConfig = stepsVariables.splitImpressionsConfig;
    var isImpressionsEvent = eventName == splitImpressionsConfig.impressionsEventName ? true : 
                                                                                        false;
                                                                                          
    // If is an impressions event...           
    if ( e && isImpressionsEvent === true){ 
      var ecCopy = JSON.parse(JSON.stringify(e));
      var items = ecCopy[splitImpressionsConfig.productsArrayName];
      var productsPerSplit = splitImpressionsConfig.limitPerSplit;
  
      while(items.length > 0){
        // Build event core.
        var splitImpressionsEvent = {
          'event': 'gtm.splitImpressions',
          'impressionsOrigin': eventName,
          'ecommerce': {}
        };
    
        // Fill splitImpressions array, which will be inside ecommerce.
        var splitImpressions = [];   
        for(var i=productsPerSplit-1; i>=0; i--){
          if(items.length == 0) break;        // <-- End when there are no more products.
          splitImpressions.unshift(items[i]); // Add always as the first element, since we are going in reverse order.
          items.splice(i, 1);                 // Delete the added element from the source items array.
        }

        // When the array is filled with the productsPerSplit number or there are no more products on items...

        // Add the array to the object and push it.
        splitImpressionsEvent.ecommerce.splitImpressions = splitImpressions;
        dataLayerPush(splitImpressionsEvent);
      }

      // Push to clear splitImpressions.
      dataLayerPush({
        'event': 'gtm.clearSplitImpressionsArray',
        'ecommerce': {
          'splitImpressions': false,
          'impressions': false
        }
      });
    }       
  }
};
// ----------------------------------- END SETUP FUNCTIONS -----------------------------------------


// ---------------------------------------- START --------------------------------------------------
var eventIsGA3 = steps.isEventGA3EEC(eventName); // Is the current event a GA3 EEC event?
if(eventIsGA3 === false){ 
  if(ecommerce){
    // In case push is bad built, search for items array at second level in ecommerce object parameters
    // and extract the items array to the first level, then delete that second level parameter.
    if(!ecommerce.items){
      for(let ecParameter in ecommerce){
        if( getType(ecommerce[ecParameter]) === 'object' &&
            ecommerce[ecParameter].items &&
            getType(ecommerce[ecParameter].items) === 'array'){
          ecommerce.items = ecommerce[ecParameter].items;
          Object.delete(ecommerce, ecParameter);
          break;
        }
      }
    }
   
    if(ecommerce.items){ // Event is a GA4 Ecommerce event.  

      // Patch for correcting split impressions data in ecommerce and append it correctly, under 'items'.
      if(eventName === "gtm.splitImpressions" && ecommerce.splitImpressions){
        ecommerce.items = ecommerce.splitImpressions;
        Object.delete(ecommerce, 'splitImpressions');
        Object.delete(ecommerce, 'impressions');        
      }

      // Apply parameter name change.
      ecommerce.items = steps.parameterNameChange(ecommerce.items);
      
      // Apply value change.
      ecommerce.items = steps.parameterValueChange(ecommerce.items);

      // Split impressions (if event applies to).
      if(data.applySplitImpressions === true)
        steps.splitImpressions(ecommerce);
    
      // Return the GA4 Ecommerce.
      return ecommerce;
    }
  } else { 
    return 'Not an ecommerce event';  
  }
    
} else if(eventIsGA3 === true) { // Event is a GA3 EEC event. 
  // Get all ecommerce actions, needed in next functions.
  var ecActions = steps.filterEcActions(ecommerce);

  // 1. CHANGES TO BOTH GA3 CURRENT EVENT AND GA4 EVENT THAT WILL BE PUSHED.
  // 1.1. Move products to the correct level in the object.
  ecommerce = steps.moveProducts(ecommerce, ecActions);

  // 1.2. Limit products.
  ecommerce = steps.limitProducts(ecommerce, ecActions);

  // 1.3. Reformat dimensions and metrics.  
  ecommerce = steps.reformatDimensions(ecommerce, ecActions);
  ecommerce = steps.reformatMetrics(ecommerce, ecActions);

  // 2. REPUSH IN GA4 FORMAT.
  logToConsole('GA3 EEC event detected. Event will be pushed again in GA4 format.');
  var ga4Ecommerce = JSON.parse(JSON.stringify(ecommerce));
  steps.pushInGA4format(ga4Ecommerce);

  // 3. RETURN THE GA3 EVENT.
  return ecommerce;

} else return 'GA3 event check function failed';
// ---------------------------------------- END -----------------------------------------------


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "dataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_template_storage",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 17/2/2023, 15:33:12


