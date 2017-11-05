<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Alumno
 *
 * @ORM\Table(name="alumno")
 * @ORM\Entity
 */
class Alumno
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idpersona", type="integer", nullable=true)
     */
    private $idpersona;

    /**
     * @var integer
     *
     * @ORM\Column(name="codigoalumno", type="integer", nullable=true)
     */
    private $codigoalumno;

    /**
     * @var integer
     *
     * @ORM\Column(name="idapoderado", type="integer", nullable=true)
     */
    private $idapoderado;

    /**
     * @var boolean
     *
     * @ORM\Column(name="discapacidad", type="boolean", nullable=true)
     */
    private $discapacidad;

    /**
     * @var string
     *
     * @ORM\Column(name="tipodiscapacidad", type="string", length=12, nullable=true)
     */
    private $tipodiscapacidad;

    /**
     * @var string
     *
     * @ORM\Column(name="foto", type="string", length=68, nullable=true)
     */
    private $foto;

    /**
     * @var float
     *
     * @ORM\Column(name="talla", type="float", precision=10, scale=0, nullable=true)
     */
    private $talla;

    /**
     * @var float
     *
     * @ORM\Column(name="peso", type="float", precision=10, scale=0, nullable=true)
     */
    private $peso;

    /**
     * @var integer
     *
     * @ORM\Column(name="estado", type="integer", nullable=true)
     */
    private $estado;

    /**
     * @var string
     *
     * @ORM\Column(name="etapa", type="string", length=20, nullable=true)
     */
    private $etapa;

    /**
     * @var integer
     *
     * @ORM\Column(name="idalumno", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idalumno;


}

